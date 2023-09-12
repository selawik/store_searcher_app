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
  }

  void _onStarted(_Started event, Emitter emit) async {
    if (event.controller != null) {
      emit(MapState.initialized(controller: event.controller!));
      await _loadShops(emit);
      add(const MapEvent.showMyLocation());
    } else {
      emit(const MapState.error());
    }
  }

  Future<void> _onZoomIn(_ZoomIn event, Emitter emit) async {
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

  void _onZoomOut(_ZoomOut event, Emitter emit) {
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

  Future<void> _onShowMyLocation(_ShowMyLocation event, Emitter emit) async {
    final currentState = state;
    if (currentState is! _Initialized) {
      return;
    }

    try {
      final myLocation = await _repository.getCurrentLocation();

      //TODO(@selawik) Add mapper
      final point = Point(
        longitude: myLocation.longitude,
        latitude: myLocation.latitude,
      );

      final oldCameraPosition =
          await currentState.controller.getCameraPosition();

      currentState.controller.moveCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: point,
            zoom: oldCameraPosition.zoom > 15 ? oldCameraPosition.zoom : 15,
          ),
        ),
        animation: const MapAnimation(duration: 0.5),
      );

      final userMarker = UserMarker(
        latitude: point.latitude,
        longitude: point.longitude,
      );

      final existingObjectIndex = currentState.markers.indexWhere(
        (element) => element is UserMarker,
      );

      var newMarkers = List<MapMarker>.from(currentState.markers);

      if (existingObjectIndex != -1) {
        newMarkers[existingObjectIndex] = userMarker;
      } else {
        newMarkers.add(userMarker);
      }

      emit(currentState.copyWith(markers: newMarkers));
    } on LocationServiceIsDisabled catch (e, stack) {
      //TODO(@selawik) Add error state
      log(e.toString(), stackTrace: stack);
    } on NoLocationPermission catch (e, stack) {
      //TODO(@selawik) Add error state
      log(e.toString(), stackTrace: stack);
    } catch (e, stack) {
      //TODO(@selawik) Add error state
      log(e.toString(), stackTrace: stack);
    }
  }

  Future<void> _loadShops(Emitter emit) async {
    final currentState = state as _Initialized;

    try {
      final shopList = await _repository.getShopList();

      final List<MapMarker> mapObjects =
          currentState.markers.whereType<UserMarker>().toList();

      final List<MapMarker> shopObjects = shopList
          .map<MapMarker>(
            (e) => ShopMarker(
              latitude: e.location.latitude,
              longitude: e.location.longitude,
            ),
          )
          .toList();

      emit(currentState.copyWith(markers: shopObjects + mapObjects));
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
    }
  }
}
