import 'package:yandex_map_test/src/feature/map/domain/entity/enum/shop_type.dart';
import 'package:yandex_map_test/src/feature/map/domain/entity/map_location.dart';
import 'package:yandex_map_test/src/feature/map/domain/entity/shop_entity.dart';

abstract interface class MapRepository {
  Future<MapLocation> getCurrentLocation();
  Future<List<ShopEntity>> getShopList({ShopType? type});
}
