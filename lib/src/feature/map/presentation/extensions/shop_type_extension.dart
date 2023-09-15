import 'package:yandex_map_test/src/common/constant/assets_catalog.dart';
import 'package:yandex_map_test/src/feature/map/domain/entity/enum/shop_type.dart';

extension ShopTypeExtension on ShopType {
  String get imageAsset => switch (this) {
        ShopType.pyaterochka => AssetsCatalog.icPyaterochka,
        ShopType.magnit => AssetsCatalog.icMagnit,
        ShopType.perekrestok => AssetsCatalog.icPerekrestok,
        //TODO add other cases
        _ => AssetsCatalog.icPyaterochka,
      };
}
