import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_map_test/src/feature/map/domain/exceptions/map_exceptions.dart';
import 'package:yandex_map_test/src/feature/map/domain/repository/map_repository.dart';
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

  void _onStarted(_Started event, Emitter emit) {
    if (event.controller != null) {
      emit(MapState.initialized(controller: event.controller!));
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
    } on LocationServiceIsDisabled catch (e, stack) {
      log(e.toString(), stackTrace: stack);
    } on NoLocationPermission catch (e, stack) {
      log(e.toString(), stackTrace: stack);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
    }
  }
}
