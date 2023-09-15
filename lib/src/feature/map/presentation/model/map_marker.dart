import 'package:yandex_map_test/src/common/constant/assets_catalog.dart';
import 'package:yandex_map_test/src/feature/map/domain/entity/enum/shop_type.dart';
import 'package:yandex_map_test/src/feature/map/presentation/extensions/shop_type_extension.dart';
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
    required this.shopType,
  });

  final int shopId;
  final ShopType shopType;

  @override
  String get markerAsset => shopType.imageAsset;
}

final class UserMarker extends MapMarker {
  UserMarker({
    required super.latitude,
    required super.longitude,
  });

  @override
  String get markerAsset => AssetsCatalog.icUserLocation;
}
