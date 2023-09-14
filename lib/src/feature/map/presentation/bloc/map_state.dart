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

  InitializedDetails? get details => mapOrNull(
        initialized: (state) => state.details,
      );

  const factory MapState.loading() = _Loading;

  const factory MapState.error() = _Error;

  const factory MapState.initialized({
    required YandexMapController controller,
    InitializedDetails? details,
    MapMarker? userMarker,
    @Default(<MapMarker>[]) List<MapMarker> shopMarkers,
    @Default(<DrivingRoute>[]) List<DrivingRoute> routes,
  }) = _Initialized;
}

abstract base class InitializedDetails {
  String message;

  InitializedDetails({required this.message});
}

final class ErrorDetails extends InitializedDetails {
  ErrorDetails({required super.message});
}

final class DialogDetails extends InitializedDetails {
  DialogDetails({required super.message});
}

final class SuccessDetails extends InitializedDetails {
  SuccessDetails({required super.message});
}

final class LoadingDetails extends InitializedDetails {
  LoadingDetails({required super.message});
}
