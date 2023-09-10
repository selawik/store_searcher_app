part of 'map_bloc.dart';

@freezed
class MapState with _$MapState {
  const MapState._();

  List<MapObject> get mapObjects =>
      mapOrNull(initialized: (state) => state.mapObjects) ?? [];

  const factory MapState.loading() = _Loading;
  const factory MapState.error() = _Error;
  const factory MapState.initialized({
    required YandexMapController controller,
    @Default(<MapObject>[]) List<MapObject> mapObjects,
  }) = _Initialized;
}
