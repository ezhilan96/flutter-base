// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direction_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DirectionDto _$DirectionDtoFromJson(Map<String, dynamic> json) {
  return _DirectionDto.fromJson(json);
}

/// @nodoc
mixin _$DirectionDto {
  List<Route>? get routes => throw _privateConstructorUsedError;

  /// Serializes this DirectionDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DirectionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DirectionDtoCopyWith<DirectionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionDtoCopyWith<$Res> {
  factory $DirectionDtoCopyWith(
          DirectionDto value, $Res Function(DirectionDto) then) =
      _$DirectionDtoCopyWithImpl<$Res, DirectionDto>;
  @useResult
  $Res call({List<Route>? routes});
}

/// @nodoc
class _$DirectionDtoCopyWithImpl<$Res, $Val extends DirectionDto>
    implements $DirectionDtoCopyWith<$Res> {
  _$DirectionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DirectionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routes = freezed,
  }) {
    return _then(_value.copyWith(
      routes: freezed == routes
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<Route>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DirectionDtoImplCopyWith<$Res>
    implements $DirectionDtoCopyWith<$Res> {
  factory _$$DirectionDtoImplCopyWith(
          _$DirectionDtoImpl value, $Res Function(_$DirectionDtoImpl) then) =
      __$$DirectionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Route>? routes});
}

/// @nodoc
class __$$DirectionDtoImplCopyWithImpl<$Res>
    extends _$DirectionDtoCopyWithImpl<$Res, _$DirectionDtoImpl>
    implements _$$DirectionDtoImplCopyWith<$Res> {
  __$$DirectionDtoImplCopyWithImpl(
      _$DirectionDtoImpl _value, $Res Function(_$DirectionDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DirectionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routes = freezed,
  }) {
    return _then(_$DirectionDtoImpl(
      routes: freezed == routes
          ? _value._routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<Route>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DirectionDtoImpl implements _DirectionDto {
  const _$DirectionDtoImpl({final List<Route>? routes}) : _routes = routes;

  factory _$DirectionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DirectionDtoImplFromJson(json);

  final List<Route>? _routes;
  @override
  List<Route>? get routes {
    final value = _routes;
    if (value == null) return null;
    if (_routes is EqualUnmodifiableListView) return _routes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DirectionDto(routes: $routes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectionDtoImpl &&
            const DeepCollectionEquality().equals(other._routes, _routes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_routes));

  /// Create a copy of DirectionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectionDtoImplCopyWith<_$DirectionDtoImpl> get copyWith =>
      __$$DirectionDtoImplCopyWithImpl<_$DirectionDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DirectionDtoImplToJson(
      this,
    );
  }
}

abstract class _DirectionDto implements DirectionDto {
  const factory _DirectionDto({final List<Route>? routes}) = _$DirectionDtoImpl;

  factory _DirectionDto.fromJson(Map<String, dynamic> json) =
      _$DirectionDtoImpl.fromJson;

  @override
  List<Route>? get routes;

  /// Create a copy of DirectionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DirectionDtoImplCopyWith<_$DirectionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Route _$RouteFromJson(Map<String, dynamic> json) {
  return _Route.fromJson(json);
}

/// @nodoc
mixin _$Route {
  Bound? get bounds => throw _privateConstructorUsedError;
  List<Leg>? get legs => throw _privateConstructorUsedError;
  OverviewPolyLine? get overview_polyline => throw _privateConstructorUsedError;

  /// Serializes this Route to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteCopyWith<Route> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteCopyWith<$Res> {
  factory $RouteCopyWith(Route value, $Res Function(Route) then) =
      _$RouteCopyWithImpl<$Res, Route>;
  @useResult
  $Res call(
      {Bound? bounds, List<Leg>? legs, OverviewPolyLine? overview_polyline});

  $BoundCopyWith<$Res>? get bounds;
  $OverviewPolyLineCopyWith<$Res>? get overview_polyline;
}

/// @nodoc
class _$RouteCopyWithImpl<$Res, $Val extends Route>
    implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bounds = freezed,
    Object? legs = freezed,
    Object? overview_polyline = freezed,
  }) {
    return _then(_value.copyWith(
      bounds: freezed == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as Bound?,
      legs: freezed == legs
          ? _value.legs
          : legs // ignore: cast_nullable_to_non_nullable
              as List<Leg>?,
      overview_polyline: freezed == overview_polyline
          ? _value.overview_polyline
          : overview_polyline // ignore: cast_nullable_to_non_nullable
              as OverviewPolyLine?,
    ) as $Val);
  }

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BoundCopyWith<$Res>? get bounds {
    if (_value.bounds == null) {
      return null;
    }

    return $BoundCopyWith<$Res>(_value.bounds!, (value) {
      return _then(_value.copyWith(bounds: value) as $Val);
    });
  }

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OverviewPolyLineCopyWith<$Res>? get overview_polyline {
    if (_value.overview_polyline == null) {
      return null;
    }

    return $OverviewPolyLineCopyWith<$Res>(_value.overview_polyline!, (value) {
      return _then(_value.copyWith(overview_polyline: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RouteImplCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$$RouteImplCopyWith(
          _$RouteImpl value, $Res Function(_$RouteImpl) then) =
      __$$RouteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Bound? bounds, List<Leg>? legs, OverviewPolyLine? overview_polyline});

  @override
  $BoundCopyWith<$Res>? get bounds;
  @override
  $OverviewPolyLineCopyWith<$Res>? get overview_polyline;
}

/// @nodoc
class __$$RouteImplCopyWithImpl<$Res>
    extends _$RouteCopyWithImpl<$Res, _$RouteImpl>
    implements _$$RouteImplCopyWith<$Res> {
  __$$RouteImplCopyWithImpl(
      _$RouteImpl _value, $Res Function(_$RouteImpl) _then)
      : super(_value, _then);

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bounds = freezed,
    Object? legs = freezed,
    Object? overview_polyline = freezed,
  }) {
    return _then(_$RouteImpl(
      bounds: freezed == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as Bound?,
      legs: freezed == legs
          ? _value._legs
          : legs // ignore: cast_nullable_to_non_nullable
              as List<Leg>?,
      overview_polyline: freezed == overview_polyline
          ? _value.overview_polyline
          : overview_polyline // ignore: cast_nullable_to_non_nullable
              as OverviewPolyLine?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RouteImpl implements _Route {
  const _$RouteImpl(
      {this.bounds, final List<Leg>? legs, this.overview_polyline})
      : _legs = legs;

  factory _$RouteImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouteImplFromJson(json);

  @override
  final Bound? bounds;
  final List<Leg>? _legs;
  @override
  List<Leg>? get legs {
    final value = _legs;
    if (value == null) return null;
    if (_legs is EqualUnmodifiableListView) return _legs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final OverviewPolyLine? overview_polyline;

  @override
  String toString() {
    return 'Route(bounds: $bounds, legs: $legs, overview_polyline: $overview_polyline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteImpl &&
            (identical(other.bounds, bounds) || other.bounds == bounds) &&
            const DeepCollectionEquality().equals(other._legs, _legs) &&
            (identical(other.overview_polyline, overview_polyline) ||
                other.overview_polyline == overview_polyline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bounds,
      const DeepCollectionEquality().hash(_legs), overview_polyline);

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteImplCopyWith<_$RouteImpl> get copyWith =>
      __$$RouteImplCopyWithImpl<_$RouteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RouteImplToJson(
      this,
    );
  }
}

abstract class _Route implements Route {
  const factory _Route(
      {final Bound? bounds,
      final List<Leg>? legs,
      final OverviewPolyLine? overview_polyline}) = _$RouteImpl;

  factory _Route.fromJson(Map<String, dynamic> json) = _$RouteImpl.fromJson;

  @override
  Bound? get bounds;
  @override
  List<Leg>? get legs;
  @override
  OverviewPolyLine? get overview_polyline;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteImplCopyWith<_$RouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Bound _$BoundFromJson(Map<String, dynamic> json) {
  return _Bound.fromJson(json);
}

/// @nodoc
mixin _$Bound {
  BoundLatLng? get northeast => throw _privateConstructorUsedError;
  BoundLatLng? get southwest => throw _privateConstructorUsedError;

  /// Serializes this Bound to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Bound
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BoundCopyWith<Bound> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoundCopyWith<$Res> {
  factory $BoundCopyWith(Bound value, $Res Function(Bound) then) =
      _$BoundCopyWithImpl<$Res, Bound>;
  @useResult
  $Res call({BoundLatLng? northeast, BoundLatLng? southwest});

  $BoundLatLngCopyWith<$Res>? get northeast;
  $BoundLatLngCopyWith<$Res>? get southwest;
}

/// @nodoc
class _$BoundCopyWithImpl<$Res, $Val extends Bound>
    implements $BoundCopyWith<$Res> {
  _$BoundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Bound
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? northeast = freezed,
    Object? southwest = freezed,
  }) {
    return _then(_value.copyWith(
      northeast: freezed == northeast
          ? _value.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as BoundLatLng?,
      southwest: freezed == southwest
          ? _value.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as BoundLatLng?,
    ) as $Val);
  }

  /// Create a copy of Bound
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BoundLatLngCopyWith<$Res>? get northeast {
    if (_value.northeast == null) {
      return null;
    }

    return $BoundLatLngCopyWith<$Res>(_value.northeast!, (value) {
      return _then(_value.copyWith(northeast: value) as $Val);
    });
  }

  /// Create a copy of Bound
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BoundLatLngCopyWith<$Res>? get southwest {
    if (_value.southwest == null) {
      return null;
    }

    return $BoundLatLngCopyWith<$Res>(_value.southwest!, (value) {
      return _then(_value.copyWith(southwest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BoundImplCopyWith<$Res> implements $BoundCopyWith<$Res> {
  factory _$$BoundImplCopyWith(
          _$BoundImpl value, $Res Function(_$BoundImpl) then) =
      __$$BoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BoundLatLng? northeast, BoundLatLng? southwest});

  @override
  $BoundLatLngCopyWith<$Res>? get northeast;
  @override
  $BoundLatLngCopyWith<$Res>? get southwest;
}

/// @nodoc
class __$$BoundImplCopyWithImpl<$Res>
    extends _$BoundCopyWithImpl<$Res, _$BoundImpl>
    implements _$$BoundImplCopyWith<$Res> {
  __$$BoundImplCopyWithImpl(
      _$BoundImpl _value, $Res Function(_$BoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of Bound
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? northeast = freezed,
    Object? southwest = freezed,
  }) {
    return _then(_$BoundImpl(
      northeast: freezed == northeast
          ? _value.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as BoundLatLng?,
      southwest: freezed == southwest
          ? _value.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as BoundLatLng?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoundImpl implements _Bound {
  const _$BoundImpl({this.northeast, this.southwest});

  factory _$BoundImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoundImplFromJson(json);

  @override
  final BoundLatLng? northeast;
  @override
  final BoundLatLng? southwest;

  @override
  String toString() {
    return 'Bound(northeast: $northeast, southwest: $southwest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoundImpl &&
            (identical(other.northeast, northeast) ||
                other.northeast == northeast) &&
            (identical(other.southwest, southwest) ||
                other.southwest == southwest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, northeast, southwest);

  /// Create a copy of Bound
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BoundImplCopyWith<_$BoundImpl> get copyWith =>
      __$$BoundImplCopyWithImpl<_$BoundImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoundImplToJson(
      this,
    );
  }
}

abstract class _Bound implements Bound {
  const factory _Bound(
      {final BoundLatLng? northeast,
      final BoundLatLng? southwest}) = _$BoundImpl;

  factory _Bound.fromJson(Map<String, dynamic> json) = _$BoundImpl.fromJson;

  @override
  BoundLatLng? get northeast;
  @override
  BoundLatLng? get southwest;

  /// Create a copy of Bound
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BoundImplCopyWith<_$BoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BoundLatLng _$BoundLatLngFromJson(Map<String, dynamic> json) {
  return _BoundLatLng.fromJson(json);
}

/// @nodoc
mixin _$BoundLatLng {
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;

  /// Serializes this BoundLatLng to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BoundLatLng
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BoundLatLngCopyWith<BoundLatLng> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoundLatLngCopyWith<$Res> {
  factory $BoundLatLngCopyWith(
          BoundLatLng value, $Res Function(BoundLatLng) then) =
      _$BoundLatLngCopyWithImpl<$Res, BoundLatLng>;
  @useResult
  $Res call({double? lat, double? lng});
}

/// @nodoc
class _$BoundLatLngCopyWithImpl<$Res, $Val extends BoundLatLng>
    implements $BoundLatLngCopyWith<$Res> {
  _$BoundLatLngCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BoundLatLng
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoundLatLngImplCopyWith<$Res>
    implements $BoundLatLngCopyWith<$Res> {
  factory _$$BoundLatLngImplCopyWith(
          _$BoundLatLngImpl value, $Res Function(_$BoundLatLngImpl) then) =
      __$$BoundLatLngImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? lat, double? lng});
}

/// @nodoc
class __$$BoundLatLngImplCopyWithImpl<$Res>
    extends _$BoundLatLngCopyWithImpl<$Res, _$BoundLatLngImpl>
    implements _$$BoundLatLngImplCopyWith<$Res> {
  __$$BoundLatLngImplCopyWithImpl(
      _$BoundLatLngImpl _value, $Res Function(_$BoundLatLngImpl) _then)
      : super(_value, _then);

  /// Create a copy of BoundLatLng
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$BoundLatLngImpl(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoundLatLngImpl implements _BoundLatLng {
  const _$BoundLatLngImpl({this.lat, this.lng});

  factory _$BoundLatLngImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoundLatLngImplFromJson(json);

  @override
  final double? lat;
  @override
  final double? lng;

  @override
  String toString() {
    return 'BoundLatLng(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoundLatLngImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  /// Create a copy of BoundLatLng
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BoundLatLngImplCopyWith<_$BoundLatLngImpl> get copyWith =>
      __$$BoundLatLngImplCopyWithImpl<_$BoundLatLngImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoundLatLngImplToJson(
      this,
    );
  }
}

abstract class _BoundLatLng implements BoundLatLng {
  const factory _BoundLatLng({final double? lat, final double? lng}) =
      _$BoundLatLngImpl;

  factory _BoundLatLng.fromJson(Map<String, dynamic> json) =
      _$BoundLatLngImpl.fromJson;

  @override
  double? get lat;
  @override
  double? get lng;

  /// Create a copy of BoundLatLng
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BoundLatLngImplCopyWith<_$BoundLatLngImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Leg _$LegFromJson(Map<String, dynamic> json) {
  return _Leg.fromJson(json);
}

/// @nodoc
mixin _$Leg {
  LegInfo? get distance => throw _privateConstructorUsedError;
  LegInfo? get duration => throw _privateConstructorUsedError;

  /// Serializes this Leg to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Leg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LegCopyWith<Leg> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegCopyWith<$Res> {
  factory $LegCopyWith(Leg value, $Res Function(Leg) then) =
      _$LegCopyWithImpl<$Res, Leg>;
  @useResult
  $Res call({LegInfo? distance, LegInfo? duration});

  $LegInfoCopyWith<$Res>? get distance;
  $LegInfoCopyWith<$Res>? get duration;
}

/// @nodoc
class _$LegCopyWithImpl<$Res, $Val extends Leg> implements $LegCopyWith<$Res> {
  _$LegCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Leg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as LegInfo?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as LegInfo?,
    ) as $Val);
  }

  /// Create a copy of Leg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LegInfoCopyWith<$Res>? get distance {
    if (_value.distance == null) {
      return null;
    }

    return $LegInfoCopyWith<$Res>(_value.distance!, (value) {
      return _then(_value.copyWith(distance: value) as $Val);
    });
  }

  /// Create a copy of Leg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LegInfoCopyWith<$Res>? get duration {
    if (_value.duration == null) {
      return null;
    }

    return $LegInfoCopyWith<$Res>(_value.duration!, (value) {
      return _then(_value.copyWith(duration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LegImplCopyWith<$Res> implements $LegCopyWith<$Res> {
  factory _$$LegImplCopyWith(_$LegImpl value, $Res Function(_$LegImpl) then) =
      __$$LegImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LegInfo? distance, LegInfo? duration});

  @override
  $LegInfoCopyWith<$Res>? get distance;
  @override
  $LegInfoCopyWith<$Res>? get duration;
}

/// @nodoc
class __$$LegImplCopyWithImpl<$Res> extends _$LegCopyWithImpl<$Res, _$LegImpl>
    implements _$$LegImplCopyWith<$Res> {
  __$$LegImplCopyWithImpl(_$LegImpl _value, $Res Function(_$LegImpl) _then)
      : super(_value, _then);

  /// Create a copy of Leg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$LegImpl(
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as LegInfo?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as LegInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LegImpl implements _Leg {
  const _$LegImpl({this.distance, this.duration});

  factory _$LegImpl.fromJson(Map<String, dynamic> json) =>
      _$$LegImplFromJson(json);

  @override
  final LegInfo? distance;
  @override
  final LegInfo? duration;

  @override
  String toString() {
    return 'Leg(distance: $distance, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LegImpl &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, distance, duration);

  /// Create a copy of Leg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LegImplCopyWith<_$LegImpl> get copyWith =>
      __$$LegImplCopyWithImpl<_$LegImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LegImplToJson(
      this,
    );
  }
}

abstract class _Leg implements Leg {
  const factory _Leg({final LegInfo? distance, final LegInfo? duration}) =
      _$LegImpl;

  factory _Leg.fromJson(Map<String, dynamic> json) = _$LegImpl.fromJson;

  @override
  LegInfo? get distance;
  @override
  LegInfo? get duration;

  /// Create a copy of Leg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LegImplCopyWith<_$LegImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LegInfo _$LegInfoFromJson(Map<String, dynamic> json) {
  return _LegInfo.fromJson(json);
}

/// @nodoc
mixin _$LegInfo {
  String? get text => throw _privateConstructorUsedError;
  double? get value => throw _privateConstructorUsedError;

  /// Serializes this LegInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LegInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LegInfoCopyWith<LegInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegInfoCopyWith<$Res> {
  factory $LegInfoCopyWith(LegInfo value, $Res Function(LegInfo) then) =
      _$LegInfoCopyWithImpl<$Res, LegInfo>;
  @useResult
  $Res call({String? text, double? value});
}

/// @nodoc
class _$LegInfoCopyWithImpl<$Res, $Val extends LegInfo>
    implements $LegInfoCopyWith<$Res> {
  _$LegInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LegInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LegInfoImplCopyWith<$Res> implements $LegInfoCopyWith<$Res> {
  factory _$$LegInfoImplCopyWith(
          _$LegInfoImpl value, $Res Function(_$LegInfoImpl) then) =
      __$$LegInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, double? value});
}

/// @nodoc
class __$$LegInfoImplCopyWithImpl<$Res>
    extends _$LegInfoCopyWithImpl<$Res, _$LegInfoImpl>
    implements _$$LegInfoImplCopyWith<$Res> {
  __$$LegInfoImplCopyWithImpl(
      _$LegInfoImpl _value, $Res Function(_$LegInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LegInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_$LegInfoImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LegInfoImpl implements _LegInfo {
  const _$LegInfoImpl({this.text, this.value});

  factory _$LegInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LegInfoImplFromJson(json);

  @override
  final String? text;
  @override
  final double? value;

  @override
  String toString() {
    return 'LegInfo(text: $text, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LegInfoImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, value);

  /// Create a copy of LegInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LegInfoImplCopyWith<_$LegInfoImpl> get copyWith =>
      __$$LegInfoImplCopyWithImpl<_$LegInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LegInfoImplToJson(
      this,
    );
  }
}

abstract class _LegInfo implements LegInfo {
  const factory _LegInfo({final String? text, final double? value}) =
      _$LegInfoImpl;

  factory _LegInfo.fromJson(Map<String, dynamic> json) = _$LegInfoImpl.fromJson;

  @override
  String? get text;
  @override
  double? get value;

  /// Create a copy of LegInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LegInfoImplCopyWith<_$LegInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OverviewPolyLine _$OverviewPolyLineFromJson(Map<String, dynamic> json) {
  return _OverviewPolyLine.fromJson(json);
}

/// @nodoc
mixin _$OverviewPolyLine {
  String? get points => throw _privateConstructorUsedError;

  /// Serializes this OverviewPolyLine to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OverviewPolyLine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OverviewPolyLineCopyWith<OverviewPolyLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewPolyLineCopyWith<$Res> {
  factory $OverviewPolyLineCopyWith(
          OverviewPolyLine value, $Res Function(OverviewPolyLine) then) =
      _$OverviewPolyLineCopyWithImpl<$Res, OverviewPolyLine>;
  @useResult
  $Res call({String? points});
}

/// @nodoc
class _$OverviewPolyLineCopyWithImpl<$Res, $Val extends OverviewPolyLine>
    implements $OverviewPolyLineCopyWith<$Res> {
  _$OverviewPolyLineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OverviewPolyLine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = freezed,
  }) {
    return _then(_value.copyWith(
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OverviewPolyLineImplCopyWith<$Res>
    implements $OverviewPolyLineCopyWith<$Res> {
  factory _$$OverviewPolyLineImplCopyWith(_$OverviewPolyLineImpl value,
          $Res Function(_$OverviewPolyLineImpl) then) =
      __$$OverviewPolyLineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? points});
}

/// @nodoc
class __$$OverviewPolyLineImplCopyWithImpl<$Res>
    extends _$OverviewPolyLineCopyWithImpl<$Res, _$OverviewPolyLineImpl>
    implements _$$OverviewPolyLineImplCopyWith<$Res> {
  __$$OverviewPolyLineImplCopyWithImpl(_$OverviewPolyLineImpl _value,
      $Res Function(_$OverviewPolyLineImpl) _then)
      : super(_value, _then);

  /// Create a copy of OverviewPolyLine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = freezed,
  }) {
    return _then(_$OverviewPolyLineImpl(
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OverviewPolyLineImpl implements _OverviewPolyLine {
  const _$OverviewPolyLineImpl({this.points});

  factory _$OverviewPolyLineImpl.fromJson(Map<String, dynamic> json) =>
      _$$OverviewPolyLineImplFromJson(json);

  @override
  final String? points;

  @override
  String toString() {
    return 'OverviewPolyLine(points: $points)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverviewPolyLineImpl &&
            (identical(other.points, points) || other.points == points));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, points);

  /// Create a copy of OverviewPolyLine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OverviewPolyLineImplCopyWith<_$OverviewPolyLineImpl> get copyWith =>
      __$$OverviewPolyLineImplCopyWithImpl<_$OverviewPolyLineImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OverviewPolyLineImplToJson(
      this,
    );
  }
}

abstract class _OverviewPolyLine implements OverviewPolyLine {
  const factory _OverviewPolyLine({final String? points}) =
      _$OverviewPolyLineImpl;

  factory _OverviewPolyLine.fromJson(Map<String, dynamic> json) =
      _$OverviewPolyLineImpl.fromJson;

  @override
  String? get points;

  /// Create a copy of OverviewPolyLine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OverviewPolyLineImplCopyWith<_$OverviewPolyLineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
