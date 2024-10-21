// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDetailsDto _$UserDetailsDtoFromJson(Map<String, dynamic> json) {
  return _UserDetailsDto.fromJson(json);
}

/// @nodoc
mixin _$UserDetailsDto {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  /// Serializes this UserDetailsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDetailsDtoCopyWith<UserDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsDtoCopyWith<$Res> {
  factory $UserDetailsDtoCopyWith(
          UserDetailsDto value, $Res Function(UserDetailsDto) then) =
      _$UserDetailsDtoCopyWithImpl<$Res, UserDetailsDto>;
  @useResult
  $Res call({int? id, String? name, int? phone, String? email, String? token});
}

/// @nodoc
class _$UserDetailsDtoCopyWithImpl<$Res, $Val extends UserDetailsDto>
    implements $UserDetailsDtoCopyWith<$Res> {
  _$UserDetailsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailsDtoImplCopyWith<$Res>
    implements $UserDetailsDtoCopyWith<$Res> {
  factory _$$UserDetailsDtoImplCopyWith(_$UserDetailsDtoImpl value,
          $Res Function(_$UserDetailsDtoImpl) then) =
      __$$UserDetailsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, int? phone, String? email, String? token});
}

/// @nodoc
class __$$UserDetailsDtoImplCopyWithImpl<$Res>
    extends _$UserDetailsDtoCopyWithImpl<$Res, _$UserDetailsDtoImpl>
    implements _$$UserDetailsDtoImplCopyWith<$Res> {
  __$$UserDetailsDtoImplCopyWithImpl(
      _$UserDetailsDtoImpl _value, $Res Function(_$UserDetailsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? token = freezed,
  }) {
    return _then(_$UserDetailsDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailsDtoImpl implements _UserDetailsDto {
  const _$UserDetailsDtoImpl(
      {this.id, this.name, this.phone, this.email, this.token});

  factory _$UserDetailsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailsDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? phone;
  @override
  final String? email;
  @override
  final String? token;

  @override
  String toString() {
    return 'UserDetailsDto(id: $id, name: $name, phone: $phone, email: $email, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, phone, email, token);

  /// Create a copy of UserDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailsDtoImplCopyWith<_$UserDetailsDtoImpl> get copyWith =>
      __$$UserDetailsDtoImplCopyWithImpl<_$UserDetailsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailsDtoImplToJson(
      this,
    );
  }
}

abstract class _UserDetailsDto implements UserDetailsDto {
  const factory _UserDetailsDto(
      {final int? id,
      final String? name,
      final int? phone,
      final String? email,
      final String? token}) = _$UserDetailsDtoImpl;

  factory _UserDetailsDto.fromJson(Map<String, dynamic> json) =
      _$UserDetailsDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get phone;
  @override
  String? get email;
  @override
  String? get token;

  /// Create a copy of UserDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDetailsDtoImplCopyWith<_$UserDetailsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
