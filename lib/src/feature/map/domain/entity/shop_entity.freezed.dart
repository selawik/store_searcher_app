// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  MapLocation get location => throw _privateConstructorUsedError;
  ShopType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopEntityCopyWith<ShopEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopEntityCopyWith<$Res> {
  factory $ShopEntityCopyWith(
          ShopEntity value, $Res Function(ShopEntity) then) =
      _$ShopEntityCopyWithImpl<$Res, ShopEntity>;
  @useResult
  $Res call({int id, String name, MapLocation location, ShopType type});

  $MapLocationCopyWith<$Res> get location;
}

/// @nodoc
class _$ShopEntityCopyWithImpl<$Res, $Val extends ShopEntity>
    implements $ShopEntityCopyWith<$Res> {
  _$ShopEntityCopyWithImpl(this._value, this._then);

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
              as MapLocation,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShopType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MapLocationCopyWith<$Res> get location {
    return $MapLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ShopEntityCopyWith<$Res>
    implements $ShopEntityCopyWith<$Res> {
  factory _$$_ShopEntityCopyWith(
          _$_ShopEntity value, $Res Function(_$_ShopEntity) then) =
      __$$_ShopEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, MapLocation location, ShopType type});

  @override
  $MapLocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$_ShopEntityCopyWithImpl<$Res>
    extends _$ShopEntityCopyWithImpl<$Res, _$_ShopEntity>
    implements _$$_ShopEntityCopyWith<$Res> {
  __$$_ShopEntityCopyWithImpl(
      _$_ShopEntity _value, $Res Function(_$_ShopEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? location = null,
    Object? type = null,
  }) {
    return _then(_$_ShopEntity(
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
              as MapLocation,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShopType,
    ));
  }
}

/// @nodoc

class _$_ShopEntity implements _ShopEntity {
  const _$_ShopEntity(
      {required this.id,
      required this.name,
      required this.location,
      required this.type});

  @override
  final int id;
  @override
  final String name;
  @override
  final MapLocation location;
  @override
  final ShopType type;

  @override
  String toString() {
    return 'ShopEntity(id: $id, name: $name, location: $location, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, location, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopEntityCopyWith<_$_ShopEntity> get copyWith =>
      __$$_ShopEntityCopyWithImpl<_$_ShopEntity>(this, _$identity);
}

abstract class _ShopEntity implements ShopEntity {
  const factory _ShopEntity(
      {required final int id,
      required final String name,
      required final MapLocation location,
      required final ShopType type}) = _$_ShopEntity;

  @override
  int get id;
  @override
  String get name;
  @override
  MapLocation get location;
  @override
  ShopType get type;
  @override
  @JsonKey(ignore: true)
  _$$_ShopEntityCopyWith<_$_ShopEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
