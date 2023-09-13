import 'package:yandex_map_test/src/common/constant/app_colors.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

extension DrivingRouteExtension on DrivingRoute {
  PolylineMapObject createPolylineMapObject() {
    return PolylineMapObject(
      mapId: MapObjectId('route_${metadata.hashCode}_polyline'),
      polyline: Polyline(points: geometry),
      strokeColor: AppColors.red,
      strokeWidth: 3,
    );
  }
}
