part of 'map_bloc.dart';

@freezed
class MapEvent with _$MapEvent {
  const factory MapEvent.started({
    YandexMapController? controller,
  }) = _Started;
  const factory MapEvent.zoomIn() = _ZoomIn;
  const factory MapEvent.zoomOut() = _ZoomOut;
}
