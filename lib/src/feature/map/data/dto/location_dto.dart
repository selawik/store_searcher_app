import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_dto.freezed.dart';
part 'location_dto.g.dart';

@freezed
class LocationDTO with _$LocationDTO {
  const factory LocationDTO({
    required double latitude,
    required double longitude,
  }) = _LocationDTO;

  factory LocationDTO.fromJson(Map<String, Object?> json) =>
      _$LocationDTOFromJson(json);
}
