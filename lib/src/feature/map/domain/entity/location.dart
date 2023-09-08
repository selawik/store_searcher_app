import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';

@freezed
class MapLocation with _$MapLocation {
  const factory MapLocation({
    required double latitude,
    required double longitude,
  }) = _Location;
}
