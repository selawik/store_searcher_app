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

  const factory MapState.loading() = _Loading;

  const factory MapState.error() = _Error;

  const factory MapState.initialized({
    required YandexMapController controller,
    MapMarker? userMarker,
    @Default(<MapMarker>[]) List<MapMarker> shopMarkers,
  }) = _Initialized;
}
