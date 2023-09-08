part of 'map_bloc.dart';

@freezed
class MapState with _$MapState {
  const factory MapState.loading() = _Loading;
  const factory MapState.error() = _Error;
  const factory MapState.initialized({
    required YandexMapController controller,
  }) = _Initialized;
}
