import 'package:geolocator/geolocator.dart';
import 'package:yandex_map_test/src/feature/map/data/dto/location_dto.dart';
import 'package:yandex_map_test/src/feature/map/data/dto/shop_dto.dart';
import 'package:yandex_map_test/src/feature/map/domain/entity/map_location.dart';
import 'package:yandex_map_test/src/feature/map/domain/entity/shop_entity.dart';

mixin MapMapperMixin {
  MapLocation positionToEntity(Position dto) {
    return MapLocation(
      latitude: dto.latitude,
      longitude: dto.longitude,
    );
  }

  MapLocation locationDtoToEntity(LocationDTO dto) {
    return MapLocation(
      latitude: dto.latitude,
      longitude: dto.longitude,
    );
  }

  ShopEntity shopToEntity(ShopDTO dto) {
    return ShopEntity(
      id: dto.id,
      name: dto.name,
      location: locationDtoToEntity(dto.location),
      type: dto.type,
    );
  }
}
