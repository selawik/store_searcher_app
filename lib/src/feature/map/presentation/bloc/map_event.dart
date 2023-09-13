part of 'map_bloc.dart';

@freezed
class MapEvent with _$MapEvent {
  const factory MapEvent.started({
    YandexMapController? controller,
  }) = _Started;
  const factory MapEvent.zoomIn() = _ZoomIn;
  const factory MapEvent.zoomOut() = _ZoomOut;
  const factory MapEvent.showMyLocation() = _ShowMyLocation;
  const factory MapEvent.loadShops() = _LoadShops;
  const factory MapEvent.buildRoute({
    required ShopMarker shopMarker,
  }) = _BuildRoute;
}
