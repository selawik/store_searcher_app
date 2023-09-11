import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_map_test/src/feature/map/domain/entity/enum/shop_type.dart';
import 'package:yandex_map_test/src/feature/map/domain/entity/map_location.dart';

part 'shop_entity.freezed.dart';

@freezed
class ShopEntity with _$ShopEntity {
  const factory ShopEntity({
    required int id,
    required String name,
    required MapLocation location,
    required ShopType type,
  }) = _ShopEntity;
}
