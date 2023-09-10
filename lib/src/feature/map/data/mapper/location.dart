import 'package:geolocator/geolocator.dart';
import 'package:yandex_map_test/src/feature/map/domain/entity/location.dart';

mixin LocationMapperMixin {
  @override
  MapLocation toEntity(Position position) {
    return MapLocation(
      latitude: position.latitude,
      longitude: position.longitude,
    );
  }
}
