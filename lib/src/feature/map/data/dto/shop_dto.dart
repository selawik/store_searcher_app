import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_map_test/src/feature/map/data/dto/location_dto.dart';
import 'package:yandex_map_test/src/feature/map/domain/entity/enum/shop_type.dart';

part 'shop_dto.freezed.dart';
part 'shop_dto.g.dart';

@freezed
class ShopDTO with _$ShopDTO {
  const factory ShopDTO({
    required int id,
    required String name,
    required LocationDTO location,
    //TODO (selawik) maybe create only dto enum
    required ShopType type,
  }) = _ShopDTO;

  factory ShopDTO.fromJson(Map<String, Object?> json) =>
      _$ShopDTOFromJson(json);
}
