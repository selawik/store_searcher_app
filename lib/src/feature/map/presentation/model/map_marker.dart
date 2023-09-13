import 'package:yandex_map_test/src/common/constant/assets_catalog.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

sealed class MapMarker {
  final double latitude;
  final double longitude;

  abstract final String markerAsset;

  PlacemarkMapObject createPlaceMarkObject(
    void Function(PlacemarkMapObject, Point)? onTap,
  ) {
    return PlacemarkMapObject(
      mapId: MapObjectId(hashCode.toString()),
      point: Point(latitude: latitude, longitude: longitude),
      opacity: 1,
      onTap: onTap,
      icon: PlacemarkIcon.single(
        PlacemarkIconStyle(
          image: BitmapDescriptor.fromAssetImage(
            markerAsset,
          ),
        ),
      ),
    );
  }

  MapMarker({
    required this.latitude,
    required this.longitude,
  });
}

final class ShopMarker extends MapMarker {
  ShopMarker({
    required super.latitude,
    required super.longitude,
    required this.shopId,
  });

  final int shopId;

  @override
  String markerAsset = AssetsCatalog.icPyaterochka;
}

final class UserMarker extends MapMarker {
  UserMarker({
    required super.latitude,
    required super.longitude,
  });

  @override
  String markerAsset = AssetsCatalog.icUserLocation;
}