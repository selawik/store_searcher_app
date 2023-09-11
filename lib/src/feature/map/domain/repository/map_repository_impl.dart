import 'package:yandex_map_test/src/feature/map/data/data_provider/location_data_provider/location_data_provider.dart';
import 'package:yandex_map_test/src/feature/map/data/data_provider/shop_data_provider/shop_data_provider.dart';
import 'package:yandex_map_test/src/feature/map/domain/entity/enum/shop_type.dart';
import 'package:yandex_map_test/src/feature/map/domain/entity/map_location.dart';
import 'package:yandex_map_test/src/feature/map/domain/entity/shop_entity.dart';
import 'package:yandex_map_test/src/feature/map/domain/repository/map_repository.dart';

final class MapRepositoryImpl implements MapRepository {
  final LocationDataProvider _locationDataProvider;
  final ShopDataProvider _shopDataProvider;

  MapRepositoryImpl({
    required LocationDataProvider locationDataProvider,
    required ShopDataProvider shopDataProvider,
  })  : _locationDataProvider = locationDataProvider,
        _shopDataProvider = shopDataProvider;

  @override
  Future<MapLocation> getCurrentLocation() async {
    return await _locationDataProvider.getCurrentLocation();
  }

  @override
  Future<List<ShopEntity>> getShopList({ShopType? type}) async {
    return await _shopDataProvider.getShopList();
  }
}
