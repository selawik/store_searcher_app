import 'package:yandex_map_test/src/feature/map/domain/entity/location.dart';

abstract interface class LocationDataProvider {
  Future<MapLocation> getCurrentLocation();
}
