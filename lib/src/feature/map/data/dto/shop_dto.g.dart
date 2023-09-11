// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopDTO _$$_ShopDTOFromJson(Map<String, dynamic> json) => _$_ShopDTO(
      id: json['id'] as int,
      name: json['name'] as String,
      location: LocationDTO.fromJson(json['location'] as Map<String, dynamic>),
      type: $enumDecode(_$ShopTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_ShopDTOToJson(_$_ShopDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'type': _$ShopTypeEnumMap[instance.type]!,
    };

const _$ShopTypeEnumMap = {
  ShopType.pyaterochka: 'pyaterochka',
  ShopType.magnit: 'magnit',
  ShopType.perekrestok: 'perekrestok',
  ShopType.spar: 'spar',
};
