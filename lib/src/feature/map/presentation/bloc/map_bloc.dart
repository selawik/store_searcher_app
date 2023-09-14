import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_map_test/src/feature/map/domain/exceptions/map_exceptions.dart';
import 'package:yandex_map_test/src/feature/map/domain/repository/map_repository.dart';
import 'package:yandex_map_test/src/feature/map/presentation/model/map_marker.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

part 'map_bloc.freezed.dart';
part 'map_event.dart';
part 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  final MapRepository _repository;

  MapBloc({
    required MapRepository repository,
  })  : _repository = repository,
        super(const MapState.loading()) {
    on<_ZoomIn>(_onZoomIn);
    on<_ZoomOut>(_onZoomOut);
    on<_Started>(_onStarted);
    on<_ShowMyLocation>(_onShowMyLocation);
    on<_BuildRoute>(_onBuildRoute);
    on<_LoadShops>(_onLoadShops);
  }

  void _onStarted(_Started event, Emitter<MapState> emit) {
    emit(const MapState.loading());

    if (event.controller != null) {
      emit(
        MapState.initialized(
          controller: event.controller!,
          details: LoadingDetails(message: ''),
        ),
      );

      add(const MapEvent.loadShops());
      add(const MapEvent.showMyLocation());

      emit((state as _Initialized).copyWith(details: null));
    } else {
      emit(const MapState.error());
    }
  }

  void _onZoomIn(_ZoomIn event, Emitter<MapState> emit) {
    final currentState = state;

    if (currentState is _Initialized) {
      currentState.controller.moveCamera(
        CameraUpdate.zoomIn(),
        animation: const MapAnimation(
          duration: 0.5,
        ),
      );
    }
  }

  void _onZoomOut(_ZoomOut event, Emitter<MapState> emit) {
    final currentState = state;

    if (currentState is _Initialized) {
      currentState.controller.moveCamera(
        CameraUpdate.zoomOut(),
        animation: const MapAnimation(
          duration: 0.5,
        ),
      );
    }
  }

  Future<void> _onShowMyLocation(
    _ShowMyLocation event,
    Emitter<MapState> emit,
  ) async {
    try {
      final myLocation = await _repository.getCurrentLocation();

      //TODO(@selawik) Add mapper
      final point = Point(
        longitude: myLocation.longitude,
        latitude: myLocation.latitude,
      );

      final currentState = state as _Initialized;

      final cameraPosition = await currentState.controller.getCameraPosition();

      final newCameraPosition = CameraUpdate.newCameraPosition(
        CameraPosition(
          target: point,
          zoom: cameraPosition.zoom > 15 ? cameraPosition.zoom : 15,
        ),
      );

      unawaited(
        currentState.controller.moveCamera(
          newCameraPosition,
          animation: const MapAnimation(duration: 0.5),
        ),
      );

      final userMarker = UserMarker(
        latitude: point.latitude,
        longitude: point.longitude,
      );

      emit(currentState.copyWith(userMarker: userMarker));
    } on LocationServiceIsDisabled catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      final currentState = state as _Initialized;

      final newState = currentState.copyWith(
        details: ErrorDetails(message: 'Сервис местоположения заблокирован'),
      );

      emit(newState);
      emit(currentState);
    } on NoLocationPermission catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      final currentState = state as _Initialized;

      final newState = currentState.copyWith(
        details: ErrorDetails(
          message: 'Для получения местоположения необходимо разрешение',
        ),
      );

      emit(newState);
      emit(currentState);
    } on Exception catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      final currentState = state as _Initialized;

      final newState = currentState.copyWith(
        details: ErrorDetails(
          message: 'Произошла непредвиденная ошибка',
        ),
      );

      emit(newState);
      emit(currentState);
    }
  }

  Future<void> _onLoadShops(_LoadShops event, Emitter<MapState> emit) async {
    try {
      final shopList = await _repository.getShopList();

      final shopObjects = shopList
          .map<MapMarker>(
            (e) => ShopMarker(
              latitude: e.location.latitude,
              longitude: e.location.longitude,
              shopId: e.id,
            ),
          )
          .toList();

      final currentState = state as _Initialized;

      emit(currentState.copyWith(shopMarkers: shopObjects));
    } on Exception catch (e, stack) {
      log(e.toString(), stackTrace: stack);
    }
  }

  Future<void> _onBuildRoute(_BuildRoute event, Emitter<MapState> emit) async {
    final currentState = state as _Initialized;

    if (currentState.userMarker == null) {
      emit(
        currentState.copyWith(
          details: ErrorDetails(
            message: 'Не удалось определить ваше местоположение',
          ),
        ),
      );

      emit(currentState);

      return;
    }

    emit(
      currentState.copyWith(
        details: LoadingDetails(message: ''),
      ),
    );

    final userPoint = Point(
      latitude: currentState.userMarker!.latitude,
      longitude: currentState.userMarker!.longitude,
    );

    final targetPoint = Point(
      latitude: event.shopMarker.latitude,
      longitude: event.shopMarker.longitude,
    );

    final request = YandexDriving.requestRoutes(
      points: [
        RequestPoint(
          point: userPoint,
          requestPointType: RequestPointType.wayPoint,
        ),
        RequestPoint(
          point: targetPoint,
          requestPointType: RequestPointType.wayPoint,
        ),
      ],
      drivingOptions: const DrivingOptions(
        initialAzimuth: 0,
        routesCount: 1,
      ),
    );

    final route = await request.result;

    final newState = currentState.copyWith(
      routes: route.routes ?? [],
      details: null,
    );

    emit(newState);
  }
}
