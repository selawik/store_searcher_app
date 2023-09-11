import 'package:geolocator/geolocator.dart';
import 'package:yandex_map_test/src/feature/map/data/data_provider/location_data_provider/location_data_provider.dart';
import 'package:yandex_map_test/src/feature/map/data/mapper/location.dart';
import 'package:yandex_map_test/src/feature/map/domain/entity/map_location.dart';
import 'package:yandex_map_test/src/feature/map/domain/exceptions/map_exceptions.dart';

final class LocationDataProviderImpl
    with MapMapperMixin
    implements LocationDataProvider {
  @override
  Future<MapLocation> getCurrentLocation() async {
    final isLocationServiceEnabled =
        await Geolocator.isLocationServiceEnabled();

    if (!isLocationServiceEnabled) {
      throw LocationServiceIsDisabled();
    }

    final permission = await Geolocator.requestPermission();

    if (permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always) {
      final position = await Geolocator.getCurrentPosition();
      return positionToEntity(position);
    } else {
      throw NoLocationPermission();
    }
  }
}
