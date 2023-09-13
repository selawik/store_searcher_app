// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(YandexMapController? controller) started,
    required TResult Function() zoomIn,
    required TResult Function() zoomOut,
    required TResult Function() showMyLocation,
    required TResult Function() loadShops,
    required TResult Function(ShopMarker shopMarker) buildRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(YandexMapController? controller)? started,
    TResult? Function()? zoomIn,
    TResult? Function()? zoomOut,
    TResult? Function()? showMyLocation,
    TResult? Function()? loadShops,
    TResult? Function(ShopMarker shopMarker)? buildRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(YandexMapController? controller)? started,
    TResult Function()? zoomIn,
    TResult Function()? zoomOut,
    TResult Function()? showMyLocation,
    TResult Function()? loadShops,
    TResult Function(ShopMarker shopMarker)? buildRoute,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ZoomIn value) zoomIn,
    required TResult Function(_ZoomOut value) zoomOut,
    required TResult Function(_ShowMyLocation value) showMyLocation,
    required TResult Function(_LoadShops value) loadShops,
    required TResult Function(_BuildRoute value) buildRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ZoomIn value)? zoomIn,
    TResult? Function(_ZoomOut value)? zoomOut,
    TResult? Function(_ShowMyLocation value)? showMyLocation,
    TResult? Function(_LoadShops value)? loadShops,
    TResult? Function(_BuildRoute value)? buildRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ZoomIn value)? zoomIn,
    TResult Function(_ZoomOut value)? zoomOut,
    TResult Function(_ShowMyLocation value)? showMyLocation,
    TResult Function(_LoadShops value)? loadShops,
    TResult Function(_BuildRoute value)? buildRoute,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapEventCopyWith<$Res> {
  factory $MapEventCopyWith(MapEvent value, $Res Function(MapEvent) then) =
      _$MapEventCopyWithImpl<$Res, MapEvent>;
}

/// @nodoc
class _$MapEventCopyWithImpl<$Res, $Val extends MapEvent>
    implements $MapEventCopyWith<$Res> {
  _$MapEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @useResult
  $Res call({YandexMapController? controller});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = freezed,
  }) {
    return _then(_$_Started(
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as YandexMapController?,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({this.controller});

  @override
  final YandexMapController? controller;

  @override
  String toString() {
    return 'MapEvent.started(controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(YandexMapController? controller) started,
    required TResult Function() zoomIn,
    required TResult Function() zoomOut,
    required TResult Function() showMyLocation,
    required TResult Function() loadShops,
    required TResult Function(ShopMarker shopMarker) buildRoute,
  }) {
    return started(controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(YandexMapController? controller)? started,
    TResult? Function()? zoomIn,
    TResult? Function()? zoomOut,
    TResult? Function()? showMyLocation,
    TResult? Function()? loadShops,
    TResult? Function(ShopMarker shopMarker)? buildRoute,
  }) {
    return started?.call(controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(YandexMapController? controller)? started,
    TResult Function()? zoomIn,
    TResult Function()? zoomOut,
    TResult Function()? showMyLocation,
    TResult Function()? loadShops,
    TResult Function(ShopMarker shopMarker)? buildRoute,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ZoomIn value) zoomIn,
    required TResult Function(_ZoomOut value) zoomOut,
    required TResult Function(_ShowMyLocation value) showMyLocation,
    required TResult Function(_LoadShops value) loadShops,
    required TResult Function(_BuildRoute value) buildRoute,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ZoomIn value)? zoomIn,
    TResult? Function(_ZoomOut value)? zoomOut,
    TResult? Function(_ShowMyLocation value)? showMyLocation,
    TResult? Function(_LoadShops value)? loadShops,
    TResult? Function(_BuildRoute value)? buildRoute,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ZoomIn value)? zoomIn,
    TResult Function(_ZoomOut value)? zoomOut,
    TResult Function(_ShowMyLocation value)? showMyLocation,
    TResult Function(_LoadShops value)? loadShops,
    TResult Function(_BuildRoute value)? buildRoute,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MapEvent {
  const factory _Started({final YandexMapController? controller}) = _$_Started;

  YandexMapController? get controller;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ZoomInCopyWith<$Res> {
  factory _$$_ZoomInCopyWith(_$_ZoomIn value, $Res Function(_$_ZoomIn) then) =
      __$$_ZoomInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ZoomInCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$_ZoomIn>
    implements _$$_ZoomInCopyWith<$Res> {
  __$$_ZoomInCopyWithImpl(_$_ZoomIn _value, $Res Function(_$_ZoomIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ZoomIn implements _ZoomIn {
  const _$_ZoomIn();

  @override
  String toString() {
    return 'MapEvent.zoomIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ZoomIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(YandexMapController? controller) started,
    required TResult Function() zoomIn,
    required TResult Function() zoomOut,
    required TResult Function() showMyLocation,
    required TResult Function() loadShops,
    required TResult Function(ShopMarker shopMarker) buildRoute,
  }) {
    return zoomIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(YandexMapController? controller)? started,
    TResult? Function()? zoomIn,
    TResult? Function()? zoomOut,
    TResult? Function()? showMyLocation,
    TResult? Function()? loadShops,
    TResult? Function(ShopMarker shopMarker)? buildRoute,
  }) {
    return zoomIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(YandexMapController? controller)? started,
    TResult Function()? zoomIn,
    TResult Function()? zoomOut,
    TResult Function()? showMyLocation,
    TResult Function()? loadShops,
    TResult Function(ShopMarker shopMarker)? buildRoute,
    required TResult orElse(),
  }) {
    if (zoomIn != null) {
      return zoomIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ZoomIn value) zoomIn,
    required TResult Function(_ZoomOut value) zoomOut,
    required TResult Function(_ShowMyLocation value) showMyLocation,
    required TResult Function(_LoadShops value) loadShops,
    required TResult Function(_BuildRoute value) buildRoute,
  }) {
    return zoomIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ZoomIn value)? zoomIn,
    TResult? Function(_ZoomOut value)? zoomOut,
    TResult? Function(_ShowMyLocation value)? showMyLocation,
    TResult? Function(_LoadShops value)? loadShops,
    TResult? Function(_BuildRoute value)? buildRoute,
  }) {
    return zoomIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ZoomIn value)? zoomIn,
    TResult Function(_ZoomOut value)? zoomOut,
    TResult Function(_ShowMyLocation value)? showMyLocation,
    TResult Function(_LoadShops value)? loadShops,
    TResult Function(_BuildRoute value)? buildRoute,
    required TResult orElse(),
  }) {
    if (zoomIn != null) {
      return zoomIn(this);
    }
    return orElse();
  }
}

abstract class _ZoomIn implements MapEvent {
  const factory _ZoomIn() = _$_ZoomIn;
}

/// @nodoc
abstract class _$$_ZoomOutCopyWith<$Res> {
  factory _$$_ZoomOutCopyWith(
          _$_ZoomOut value, $Res Function(_$_ZoomOut) then) =
      __$$_ZoomOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ZoomOutCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$_ZoomOut>
    implements _$$_ZoomOutCopyWith<$Res> {
  __$$_ZoomOutCopyWithImpl(_$_ZoomOut _value, $Res Function(_$_ZoomOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ZoomOut implements _ZoomOut {
  const _$_ZoomOut();

  @override
  String toString() {
    return 'MapEvent.zoomOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ZoomOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(YandexMapController? controller) started,
    required TResult Function() zoomIn,
    required TResult Function() zoomOut,
    required TResult Function() showMyLocation,
    required TResult Function() loadShops,
    required TResult Function(ShopMarker shopMarker) buildRoute,
  }) {
    return zoomOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(YandexMapController? controller)? started,
    TResult? Function()? zoomIn,
    TResult? Function()? zoomOut,
    TResult? Function()? showMyLocation,
    TResult? Function()? loadShops,
    TResult? Function(ShopMarker shopMarker)? buildRoute,
  }) {
    return zoomOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(YandexMapController? controller)? started,
    TResult Function()? zoomIn,
    TResult Function()? zoomOut,
    TResult Function()? showMyLocation,
    TResult Function()? loadShops,
    TResult Function(ShopMarker shopMarker)? buildRoute,
    required TResult orElse(),
  }) {
    if (zoomOut != null) {
      return zoomOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ZoomIn value) zoomIn,
    required TResult Function(_ZoomOut value) zoomOut,
    required TResult Function(_ShowMyLocation value) showMyLocation,
    required TResult Function(_LoadShops value) loadShops,
    required TResult Function(_BuildRoute value) buildRoute,
  }) {
    return zoomOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ZoomIn value)? zoomIn,
    TResult? Function(_ZoomOut value)? zoomOut,
    TResult? Function(_ShowMyLocation value)? showMyLocation,
    TResult? Function(_LoadShops value)? loadShops,
    TResult? Function(_BuildRoute value)? buildRoute,
  }) {
    return zoomOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ZoomIn value)? zoomIn,
    TResult Function(_ZoomOut value)? zoomOut,
    TResult Function(_ShowMyLocation value)? showMyLocation,
    TResult Function(_LoadShops value)? loadShops,
    TResult Function(_BuildRoute value)? buildRoute,
    required TResult orElse(),
  }) {
    if (zoomOut != null) {
      return zoomOut(this);
    }
    return orElse();
  }
}

abstract class _ZoomOut implements MapEvent {
  const factory _ZoomOut() = _$_ZoomOut;
}

/// @nodoc
abstract class _$$_ShowMyLocationCopyWith<$Res> {
  factory _$$_ShowMyLocationCopyWith(
          _$_ShowMyLocation value, $Res Function(_$_ShowMyLocation) then) =
      __$$_ShowMyLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShowMyLocationCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$_ShowMyLocation>
    implements _$$_ShowMyLocationCopyWith<$Res> {
  __$$_ShowMyLocationCopyWithImpl(
      _$_ShowMyLocation _value, $Res Function(_$_ShowMyLocation) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ShowMyLocation implements _ShowMyLocation {
  const _$_ShowMyLocation();

  @override
  String toString() {
    return 'MapEvent.showMyLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ShowMyLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(YandexMapController? controller) started,
    required TResult Function() zoomIn,
    required TResult Function() zoomOut,
    required TResult Function() showMyLocation,
    required TResult Function() loadShops,
    required TResult Function(ShopMarker shopMarker) buildRoute,
  }) {
    return showMyLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(YandexMapController? controller)? started,
    TResult? Function()? zoomIn,
    TResult? Function()? zoomOut,
    TResult? Function()? showMyLocation,
    TResult? Function()? loadShops,
    TResult? Function(ShopMarker shopMarker)? buildRoute,
  }) {
    return showMyLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(YandexMapController? controller)? started,
    TResult Function()? zoomIn,
    TResult Function()? zoomOut,
    TResult Function()? showMyLocation,
    TResult Function()? loadShops,
    TResult Function(ShopMarker shopMarker)? buildRoute,
    required TResult orElse(),
  }) {
    if (showMyLocation != null) {
      return showMyLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ZoomIn value) zoomIn,
    required TResult Function(_ZoomOut value) zoomOut,
    required TResult Function(_ShowMyLocation value) showMyLocation,
    required TResult Function(_LoadShops value) loadShops,
    required TResult Function(_BuildRoute value) buildRoute,
  }) {
    return showMyLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ZoomIn value)? zoomIn,
    TResult? Function(_ZoomOut value)? zoomOut,
    TResult? Function(_ShowMyLocation value)? showMyLocation,
    TResult? Function(_LoadShops value)? loadShops,
    TResult? Function(_BuildRoute value)? buildRoute,
  }) {
    return showMyLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ZoomIn value)? zoomIn,
    TResult Function(_ZoomOut value)? zoomOut,
    TResult Function(_ShowMyLocation value)? showMyLocation,
    TResult Function(_LoadShops value)? loadShops,
    TResult Function(_BuildRoute value)? buildRoute,
    required TResult orElse(),
  }) {
    if (showMyLocation != null) {
      return showMyLocation(this);
    }
    return orElse();
  }
}

abstract class _ShowMyLocation implements MapEvent {
  const factory _ShowMyLocation() = _$_ShowMyLocation;
}

/// @nodoc
abstract class _$$_LoadShopsCopyWith<$Res> {
  factory _$$_LoadShopsCopyWith(
          _$_LoadShops value, $Res Function(_$_LoadShops) then) =
      __$$_LoadShopsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadShopsCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$_LoadShops>
    implements _$$_LoadShopsCopyWith<$Res> {
  __$$_LoadShopsCopyWithImpl(
      _$_LoadShops _value, $Res Function(_$_LoadShops) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadShops implements _LoadShops {
  const _$_LoadShops();

  @override
  String toString() {
    return 'MapEvent.loadShops()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadShops);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(YandexMapController? controller) started,
    required TResult Function() zoomIn,
    required TResult Function() zoomOut,
    required TResult Function() showMyLocation,
    required TResult Function() loadShops,
    required TResult Function(ShopMarker shopMarker) buildRoute,
  }) {
    return loadShops();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(YandexMapController? controller)? started,
    TResult? Function()? zoomIn,
    TResult? Function()? zoomOut,
    TResult? Function()? showMyLocation,
    TResult? Function()? loadShops,
    TResult? Function(ShopMarker shopMarker)? buildRoute,
  }) {
    return loadShops?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(YandexMapController? controller)? started,
    TResult Function()? zoomIn,
    TResult Function()? zoomOut,
    TResult Function()? showMyLocation,
    TResult Function()? loadShops,
    TResult Function(ShopMarker shopMarker)? buildRoute,
    required TResult orElse(),
  }) {
    if (loadShops != null) {
      return loadShops();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ZoomIn value) zoomIn,
    required TResult Function(_ZoomOut value) zoomOut,
    required TResult Function(_ShowMyLocation value) showMyLocation,
    required TResult Function(_LoadShops value) loadShops,
    required TResult Function(_BuildRoute value) buildRoute,
  }) {
    return loadShops(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ZoomIn value)? zoomIn,
    TResult? Function(_ZoomOut value)? zoomOut,
    TResult? Function(_ShowMyLocation value)? showMyLocation,
    TResult? Function(_LoadShops value)? loadShops,
    TResult? Function(_BuildRoute value)? buildRoute,
  }) {
    return loadShops?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ZoomIn value)? zoomIn,
    TResult Function(_ZoomOut value)? zoomOut,
    TResult Function(_ShowMyLocation value)? showMyLocation,
    TResult Function(_LoadShops value)? loadShops,
    TResult Function(_BuildRoute value)? buildRoute,
    required TResult orElse(),
  }) {
    if (loadShops != null) {
      return loadShops(this);
    }
    return orElse();
  }
}

abstract class _LoadShops implements MapEvent {
  const factory _LoadShops() = _$_LoadShops;
}

/// @nodoc
abstract class _$$_BuildRouteCopyWith<$Res> {
  factory _$$_BuildRouteCopyWith(
          _$_BuildRoute value, $Res Function(_$_BuildRoute) then) =
      __$$_BuildRouteCopyWithImpl<$Res>;
  @useResult
  $Res call({ShopMarker shopMarker});
}

/// @nodoc
class __$$_BuildRouteCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$_BuildRoute>
    implements _$$_BuildRouteCopyWith<$Res> {
  __$$_BuildRouteCopyWithImpl(
      _$_BuildRoute _value, $Res Function(_$_BuildRoute) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopMarker = null,
  }) {
    return _then(_$_BuildRoute(
      shopMarker: null == shopMarker
          ? _value.shopMarker
          : shopMarker // ignore: cast_nullable_to_non_nullable
              as ShopMarker,
    ));
  }
}

/// @nodoc

class _$_BuildRoute implements _BuildRoute {
  const _$_BuildRoute({required this.shopMarker});

  @override
  final ShopMarker shopMarker;

  @override
  String toString() {
    return 'MapEvent.buildRoute(shopMarker: $shopMarker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BuildRoute &&
            (identical(other.shopMarker, shopMarker) ||
                other.shopMarker == shopMarker));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shopMarker);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BuildRouteCopyWith<_$_BuildRoute> get copyWith =>
      __$$_BuildRouteCopyWithImpl<_$_BuildRoute>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(YandexMapController? controller) started,
    required TResult Function() zoomIn,
    required TResult Function() zoomOut,
    required TResult Function() showMyLocation,
    required TResult Function() loadShops,
    required TResult Function(ShopMarker shopMarker) buildRoute,
  }) {
    return buildRoute(shopMarker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(YandexMapController? controller)? started,
    TResult? Function()? zoomIn,
    TResult? Function()? zoomOut,
    TResult? Function()? showMyLocation,
    TResult? Function()? loadShops,
    TResult? Function(ShopMarker shopMarker)? buildRoute,
  }) {
    return buildRoute?.call(shopMarker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(YandexMapController? controller)? started,
    TResult Function()? zoomIn,
    TResult Function()? zoomOut,
    TResult Function()? showMyLocation,
    TResult Function()? loadShops,
    TResult Function(ShopMarker shopMarker)? buildRoute,
    required TResult orElse(),
  }) {
    if (buildRoute != null) {
      return buildRoute(shopMarker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ZoomIn value) zoomIn,
    required TResult Function(_ZoomOut value) zoomOut,
    required TResult Function(_ShowMyLocation value) showMyLocation,
    required TResult Function(_LoadShops value) loadShops,
    required TResult Function(_BuildRoute value) buildRoute,
  }) {
    return buildRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ZoomIn value)? zoomIn,
    TResult? Function(_ZoomOut value)? zoomOut,
    TResult? Function(_ShowMyLocation value)? showMyLocation,
    TResult? Function(_LoadShops value)? loadShops,
    TResult? Function(_BuildRoute value)? buildRoute,
  }) {
    return buildRoute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ZoomIn value)? zoomIn,
    TResult Function(_ZoomOut value)? zoomOut,
    TResult Function(_ShowMyLocation value)? showMyLocation,
    TResult Function(_LoadShops value)? loadShops,
    TResult Function(_BuildRoute value)? buildRoute,
    required TResult orElse(),
  }) {
    if (buildRoute != null) {
      return buildRoute(this);
    }
    return orElse();
  }
}

abstract class _BuildRoute implements MapEvent {
  const factory _BuildRoute({required final ShopMarker shopMarker}) =
      _$_BuildRoute;

  ShopMarker get shopMarker;
  @JsonKey(ignore: true)
  _$$_BuildRouteCopyWith<_$_BuildRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            YandexMapController controller,
            MapMarker? userMarker,
            List<MapMarker> shopMarkers,
            List<DrivingRoute> routes)
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(YandexMapController controller, MapMarker? userMarker,
            List<MapMarker> shopMarkers, List<DrivingRoute> routes)?
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(YandexMapController controller, MapMarker? userMarker,
            List<MapMarker> shopMarkers, List<DrivingRoute> routes)?
        initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Initialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Initialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res, MapState>;
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res, $Val extends MapState>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading() : super._();

  @override
  String toString() {
    return 'MapState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            YandexMapController controller,
            MapMarker? userMarker,
            List<MapMarker> shopMarkers,
            List<DrivingRoute> routes)
        initialized,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(YandexMapController controller, MapMarker? userMarker,
            List<MapMarker> shopMarkers, List<DrivingRoute> routes)?
        initialized,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(YandexMapController controller, MapMarker? userMarker,
            List<MapMarker> shopMarkers, List<DrivingRoute> routes)?
        initialized,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Initialized value) initialized,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Initialized value)? initialized,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends MapState {
  const factory _Loading() = _$_Loading;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Error extends _Error {
  const _$_Error() : super._();

  @override
  String toString() {
    return 'MapState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            YandexMapController controller,
            MapMarker? userMarker,
            List<MapMarker> shopMarkers,
            List<DrivingRoute> routes)
        initialized,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(YandexMapController controller, MapMarker? userMarker,
            List<MapMarker> shopMarkers, List<DrivingRoute> routes)?
        initialized,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(YandexMapController controller, MapMarker? userMarker,
            List<MapMarker> shopMarkers, List<DrivingRoute> routes)?
        initialized,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Initialized value) initialized,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Initialized value)? initialized,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends MapState {
  const factory _Error() = _$_Error;
  const _Error._() : super._();
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {YandexMapController controller,
      MapMarker? userMarker,
      List<MapMarker> shopMarkers,
      List<DrivingRoute> routes});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
    Object? userMarker = freezed,
    Object? shopMarkers = null,
    Object? routes = null,
  }) {
    return _then(_$_Initialized(
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as YandexMapController,
      userMarker: freezed == userMarker
          ? _value.userMarker
          : userMarker // ignore: cast_nullable_to_non_nullable
              as MapMarker?,
      shopMarkers: null == shopMarkers
          ? _value._shopMarkers
          : shopMarkers // ignore: cast_nullable_to_non_nullable
              as List<MapMarker>,
      routes: null == routes
          ? _value._routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<DrivingRoute>,
    ));
  }
}

/// @nodoc

class _$_Initialized extends _Initialized {
  const _$_Initialized(
      {required this.controller,
      this.userMarker,
      final List<MapMarker> shopMarkers = const <MapMarker>[],
      final List<DrivingRoute> routes = const <DrivingRoute>[]})
      : _shopMarkers = shopMarkers,
        _routes = routes,
        super._();

  @override
  final YandexMapController controller;
  @override
  final MapMarker? userMarker;
  final List<MapMarker> _shopMarkers;
  @override
  @JsonKey()
  List<MapMarker> get shopMarkers {
    if (_shopMarkers is EqualUnmodifiableListView) return _shopMarkers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shopMarkers);
  }

  final List<DrivingRoute> _routes;
  @override
  @JsonKey()
  List<DrivingRoute> get routes {
    if (_routes is EqualUnmodifiableListView) return _routes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routes);
  }

  @override
  String toString() {
    return 'MapState.initialized(controller: $controller, userMarker: $userMarker, shopMarkers: $shopMarkers, routes: $routes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.userMarker, userMarker) ||
                other.userMarker == userMarker) &&
            const DeepCollectionEquality()
                .equals(other._shopMarkers, _shopMarkers) &&
            const DeepCollectionEquality().equals(other._routes, _routes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      controller,
      userMarker,
      const DeepCollectionEquality().hash(_shopMarkers),
      const DeepCollectionEquality().hash(_routes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            YandexMapController controller,
            MapMarker? userMarker,
            List<MapMarker> shopMarkers,
            List<DrivingRoute> routes)
        initialized,
  }) {
    return initialized(controller, userMarker, shopMarkers, routes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(YandexMapController controller, MapMarker? userMarker,
            List<MapMarker> shopMarkers, List<DrivingRoute> routes)?
        initialized,
  }) {
    return initialized?.call(controller, userMarker, shopMarkers, routes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(YandexMapController controller, MapMarker? userMarker,
            List<MapMarker> shopMarkers, List<DrivingRoute> routes)?
        initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(controller, userMarker, shopMarkers, routes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Initialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Initialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized extends MapState {
  const factory _Initialized(
      {required final YandexMapController controller,
      final MapMarker? userMarker,
      final List<MapMarker> shopMarkers,
      final List<DrivingRoute> routes}) = _$_Initialized;
  const _Initialized._() : super._();

  YandexMapController get controller;
  MapMarker? get userMarker;
  List<MapMarker> get shopMarkers;
  List<DrivingRoute> get routes;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}
