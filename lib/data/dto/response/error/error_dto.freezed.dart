// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ErrorDto _$ErrorDtoFromJson(Map<String, dynamic> json) {
  return _ErrorDto.fromJson(json);
}

/// @nodoc
mixin _$ErrorDto {
  ErrorBody get error => throw _privateConstructorUsedError;

  /// Serializes this ErrorDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ErrorDtoCopyWith<ErrorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorDtoCopyWith<$Res> {
  factory $ErrorDtoCopyWith(ErrorDto value, $Res Function(ErrorDto) then) =
      _$ErrorDtoCopyWithImpl<$Res, ErrorDto>;
  @useResult
  $Res call({ErrorBody error});

  $ErrorBodyCopyWith<$Res> get error;
}

/// @nodoc
class _$ErrorDtoCopyWithImpl<$Res, $Val extends ErrorDto>
    implements $ErrorDtoCopyWith<$Res> {
  _$ErrorDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorBody,
    ) as $Val);
  }

  /// Create a copy of ErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorBodyCopyWith<$Res> get error {
    return $ErrorBodyCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ErrorDtoImplCopyWith<$Res>
    implements $ErrorDtoCopyWith<$Res> {
  factory _$$ErrorDtoImplCopyWith(
          _$ErrorDtoImpl value, $Res Function(_$ErrorDtoImpl) then) =
      __$$ErrorDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ErrorBody error});

  @override
  $ErrorBodyCopyWith<$Res> get error;
}

/// @nodoc
class __$$ErrorDtoImplCopyWithImpl<$Res>
    extends _$ErrorDtoCopyWithImpl<$Res, _$ErrorDtoImpl>
    implements _$$ErrorDtoImplCopyWith<$Res> {
  __$$ErrorDtoImplCopyWithImpl(
      _$ErrorDtoImpl _value, $Res Function(_$ErrorDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorDtoImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorBody,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorDtoImpl implements _ErrorDto {
  const _$ErrorDtoImpl({required this.error});

  factory _$ErrorDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorDtoImplFromJson(json);

  @override
  final ErrorBody error;

  @override
  String toString() {
    return 'ErrorDto(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorDtoImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorDtoImplCopyWith<_$ErrorDtoImpl> get copyWith =>
      __$$ErrorDtoImplCopyWithImpl<_$ErrorDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorDtoImplToJson(
      this,
    );
  }
}

abstract class _ErrorDto implements ErrorDto {
  const factory _ErrorDto({required final ErrorBody error}) = _$ErrorDtoImpl;

  factory _ErrorDto.fromJson(Map<String, dynamic> json) =
      _$ErrorDtoImpl.fromJson;

  @override
  ErrorBody get error;

  /// Create a copy of ErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorDtoImplCopyWith<_$ErrorDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorBody _$ErrorBodyFromJson(Map<String, dynamic> json) {
  return _ErrorBody.fromJson(json);
}

/// @nodoc
mixin _$ErrorBody {
  int get statusCode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this ErrorBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ErrorBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ErrorBodyCopyWith<ErrorBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorBodyCopyWith<$Res> {
  factory $ErrorBodyCopyWith(ErrorBody value, $Res Function(ErrorBody) then) =
      _$ErrorBodyCopyWithImpl<$Res, ErrorBody>;
  @useResult
  $Res call({int statusCode, String name, String message});
}

/// @nodoc
class _$ErrorBodyCopyWithImpl<$Res, $Val extends ErrorBody>
    implements $ErrorBodyCopyWith<$Res> {
  _$ErrorBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ErrorBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? name = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorBodyImplCopyWith<$Res>
    implements $ErrorBodyCopyWith<$Res> {
  factory _$$ErrorBodyImplCopyWith(
          _$ErrorBodyImpl value, $Res Function(_$ErrorBodyImpl) then) =
      __$$ErrorBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int statusCode, String name, String message});
}

/// @nodoc
class __$$ErrorBodyImplCopyWithImpl<$Res>
    extends _$ErrorBodyCopyWithImpl<$Res, _$ErrorBodyImpl>
    implements _$$ErrorBodyImplCopyWith<$Res> {
  __$$ErrorBodyImplCopyWithImpl(
      _$ErrorBodyImpl _value, $Res Function(_$ErrorBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? name = null,
    Object? message = null,
  }) {
    return _then(_$ErrorBodyImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorBodyImpl implements _ErrorBody {
  const _$ErrorBodyImpl(
      {required this.statusCode, required this.name, required this.message});

  factory _$ErrorBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorBodyImplFromJson(json);

  @override
  final int statusCode;
  @override
  final String name;
  @override
  final String message;

  @override
  String toString() {
    return 'ErrorBody(statusCode: $statusCode, name: $name, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorBodyImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, name, message);

  /// Create a copy of ErrorBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorBodyImplCopyWith<_$ErrorBodyImpl> get copyWith =>
      __$$ErrorBodyImplCopyWithImpl<_$ErrorBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorBodyImplToJson(
      this,
    );
  }
}

abstract class _ErrorBody implements ErrorBody {
  const factory _ErrorBody(
      {required final int statusCode,
      required final String name,
      required final String message}) = _$ErrorBodyImpl;

  factory _ErrorBody.fromJson(Map<String, dynamic> json) =
      _$ErrorBodyImpl.fromJson;

  @override
  int get statusCode;
  @override
  String get name;
  @override
  String get message;

  /// Create a copy of ErrorBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorBodyImplCopyWith<_$ErrorBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
