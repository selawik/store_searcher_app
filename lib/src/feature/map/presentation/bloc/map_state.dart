part of 'map_bloc.dart';

@freezed
class MapState with _$MapState {
  const MapState._();

  List<MapMarker> get markers =>
      mapOrNull(
        initialized: (state) => state.userMarker == null
            ? state.shopMarkers
            : [...state.shopMarkers, state.userMarker!],
      ) ??
      [];

  List<DrivingRoute> get routes =>
      mapOrNull(
        initialized: (state) => state.routes,
      ) ??
      [];

  const factory MapState.loading() = _Loading;

  const factory MapState.error() = _Error;

  const factory MapState.initialized({
    required YandexMapController controller,
    MapMarker? userMarker,
    @Default(<MapMarker>[]) List<MapMarker> shopMarkers,
    @Default(<DrivingRoute>[]) List<DrivingRoute> routes,
  }) = _Initialized;
}
