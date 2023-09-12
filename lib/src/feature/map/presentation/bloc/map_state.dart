part of 'map_bloc.dart';

@freezed
class MapState with _$MapState {
  const MapState._();

  List<MapMarker> get markers =>
      mapOrNull(initialized: (state) => state.markers) ?? [];

  const factory MapState.loading() = _Loading;

  const factory MapState.error() = _Error;

  const factory MapState.initialized({
    required YandexMapController controller,
    @Default(<MapMarker>[]) List<MapMarker> markers,
  }) = _Initialized;
}
