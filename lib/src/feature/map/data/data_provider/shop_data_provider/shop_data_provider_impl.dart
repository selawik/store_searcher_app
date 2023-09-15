import 'package:yandex_map_test/src/feature/map/data/data_provider/shop_data_provider/shop_data_provider.dart';
import 'package:yandex_map_test/src/feature/map/data/dto/location_dto.dart';
import 'package:yandex_map_test/src/feature/map/data/dto/shop_dto.dart';
import 'package:yandex_map_test/src/feature/map/data/mapper/location.dart';
import 'package:yandex_map_test/src/feature/map/domain/entity/enum/shop_type.dart';
import 'package:yandex_map_test/src/feature/map/domain/entity/shop_entity.dart';

class ShopDataProviderImpl with MapMapperMixin implements ShopDataProvider {
  final _shopList = [
    const ShopDTO(
      id: 1,
      name: 'Пятерочка',
      location: LocationDTO(
        latitude: 56.634532,
        longitude: 47.9248314,
      ),
      type: ShopType.pyaterochka,
    ),
    const ShopDTO(
      id: 2,
      name: 'Пятерочка',
      location: LocationDTO(
        latitude: 56.643685,
        longitude: 47.9026717,
      ),
      type: ShopType.pyaterochka,
    ),
    const ShopDTO(
      id: 3,
      name: 'Пятерочка',
      location: LocationDTO(
        latitude: 56.6233226,
        longitude: 47.9453764,
      ),
      type: ShopType.pyaterochka,
    ),
    const ShopDTO(
      id: 4,
      name: 'Пятерочка',
      location: LocationDTO(
        latitude: 56.6199942,
        longitude: 47.8639444,
      ),
      type: ShopType.pyaterochka,
    ),
    const ShopDTO(
      id: 5,
      name: 'Магнит',
      location: LocationDTO(
        latitude: 56.628750,
        longitude: 47.84802,
      ),
      type: ShopType.magnit,
    ),
    const ShopDTO(
      id: 6,
      name: 'Магнит',
      location: LocationDTO(
        latitude: 56.629761,
        longitude: 47.877556,
      ),
      type: ShopType.magnit,
    ),
    const ShopDTO(
      id: 7,
      name: 'Магнит',
      location: LocationDTO(
        latitude: 56.641817,
        longitude: 47.897819,
      ),
      type: ShopType.magnit,
    ),
    const ShopDTO(
      id: 8,
      name: 'Магнит',
      location: LocationDTO(
        latitude: 56.631111,
        longitude: 47.921123,
      ),
      type: ShopType.magnit,
    ),
  ];

  @override
  Future<List<ShopEntity>> getShopList({ShopType? type}) async {
    await Future.delayed(const Duration(seconds: 1));

    return _shopList.map(shopToEntity).toList();
  }
}
