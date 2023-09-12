// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopDTO _$ShopDTOFromJson(Map<String, dynamic> json) {
  return _ShopDTO.fromJson(json);
}

/// @nodoc
mixin _$ShopDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  LocationDTO get location =>
      throw _privateConstructorUsedError; //TODO (selawik) maybe create only dto enum
  ShopType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopDTOCopyWith<ShopDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopDTOCopyWith<$Res> {
  factory $ShopDTOCopyWith(ShopDTO value, $Res Function(ShopDTO) then) =
      _$ShopDTOCopyWithImpl<$Res, ShopDTO>;
  @useResult
  $Res call({int id, String name, LocationDTO location, ShopType type});

  $LocationDTOCopyWith<$Res> get location;
}

/// @nodoc
class _$ShopDTOCopyWithImpl<$Res, $Val extends ShopDTO>
    implements $ShopDTOCopyWith<$Res> {
  _$ShopDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? location = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDTO,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShopType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationDTOCopyWith<$Res> get location {
    return $LocationDTOCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ShopDTOCopyWith<$Res> implements $ShopDTOCopyWith<$Res> {
  factory _$$_ShopDTOCopyWith(
          _$_ShopDTO value, $Res Function(_$_ShopDTO) then) =
      __$$_ShopDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, LocationDTO location, ShopType type});

  @override
  $LocationDTOCopyWith<$Res> get location;
}

/// @nodoc
class __$$_ShopDTOCopyWithImpl<$Res>
    extends _$ShopDTOCopyWithImpl<$Res, _$_ShopDTO>
    implements _$$_ShopDTOCopyWith<$Res> {
  __$$_ShopDTOCopyWithImpl(_$_ShopDTO _value, $Res Function(_$_ShopDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? location = null,
    Object? type = null,
  }) {
    return _then(_$_ShopDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDTO,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShopType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopDTO implements _ShopDTO {
  const _$_ShopDTO(
      {required this.id,
      required this.name,
      required this.location,
      required this.type});

  factory _$_ShopDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ShopDTOFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final LocationDTO location;
//TODO (selawik) maybe create only dto enum
  @override
  final ShopType type;

  @override
  String toString() {
    return 'ShopDTO(id: $id, name: $name, location: $location, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, location, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopDTOCopyWith<_$_ShopDTO> get copyWith =>
      __$$_ShopDTOCopyWithImpl<_$_ShopDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopDTOToJson(
      this,
    );
  }
}

abstract class _ShopDTO implements ShopDTO {
  const factory _ShopDTO(
      {required final int id,
      required final String name,
      required final LocationDTO location,
      required final ShopType type}) = _$_ShopDTO;

  factory _ShopDTO.fromJson(Map<String, dynamic> json) = _$_ShopDTO.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  LocationDTO get location;
  @override //TODO (selawik) maybe create only dto enum
  ShopType get type;
  @override
  @JsonKey(ignore: true)
  _$$_ShopDTOCopyWith<_$_ShopDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
