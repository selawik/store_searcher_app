import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yandex_map_test/src/common/constant/assets_catalog.dart';
import 'package:yandex_map_test/src/feature/map/domain/entity/shop_entity.dart';
import 'package:yandex_map_test/src/feature/map/presentation/bloc/map_bloc.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

mixin MapMixin on Bloc<MapEvent, MapState> {
  static const String userMapKeyString = 'userLocation';

  MapObject createUserPlaceMarkObject(Point point) {
    return createPlaceMarkObject(
      userMapKeyString,
      AssetsCatalog.icUserLocation,
      point,
    );
  }

  MapObject createShopPlaceMarkObject(ShopEntity shop) {
    return createPlaceMarkObject(
      shop.id.toString(),
      //TODO (@selawik) change asset
      AssetsCatalog.icPyaterochka,
      Point(
        latitude: shop.location.latitude,
        longitude: shop.location.longitude,
      ),
    );
  }

  MapObject createPlaceMarkObject(
    String id,
    String asset,
    Point point,
  ) {
    return PlacemarkMapObject(
      mapId: MapObjectId(id),
      point: point,
      opacity: 1,
      icon: PlacemarkIcon.single(
        PlacemarkIconStyle(
          image: BitmapDescriptor.fromAssetImage(
            asset,
          ),
        ),
      ),
    );
  }
}
