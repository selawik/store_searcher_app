import 'package:yandex_map_test/src/feature/map/data/data_provider/location_data_provider.dart';
import 'package:yandex_map_test/src/feature/map/domain/entity/location.dart';
import 'package:yandex_map_test/src/feature/map/domain/repository/map_repository.dart';

final class MapRepositoryImpl implements MapRepository {
  final LocationDataProvider _locationDataProvider;

  MapRepositoryImpl({
    required LocationDataProvider dataProvider,
  }) : _locationDataProvider = dataProvider;

  @override
  Future<MapLocation> getCurrentLocation() async {
    return await _locationDataProvider.getCurrentLocation();
  }
}
