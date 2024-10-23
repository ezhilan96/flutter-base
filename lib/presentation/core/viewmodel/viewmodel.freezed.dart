// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScreenState<T> {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Enum> get navigationStack => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  T get uiState => throw _privateConstructorUsedError;

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScreenStateCopyWith<T, ScreenState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenStateCopyWith<T, $Res> {
  factory $ScreenStateCopyWith(
          ScreenState<T> value, $Res Function(ScreenState<T>) then) =
      _$ScreenStateCopyWithImpl<T, $Res, ScreenState<T>>;
  @useResult
  $Res call(
      {bool isLoading, List<Enum> navigationStack, String message, T uiState});
}

/// @nodoc
class _$ScreenStateCopyWithImpl<T, $Res, $Val extends ScreenState<T>>
    implements $ScreenStateCopyWith<T, $Res> {
  _$ScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? navigationStack = null,
    Object? message = null,
    Object? uiState = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      navigationStack: null == navigationStack
          ? _value.navigationStack
          : navigationStack // ignore: cast_nullable_to_non_nullable
              as List<Enum>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      uiState: freezed == uiState
          ? _value.uiState
          : uiState // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScreenStateImplCopyWith<T, $Res>
    implements $ScreenStateCopyWith<T, $Res> {
  factory _$$ScreenStateImplCopyWith(_$ScreenStateImpl<T> value,
          $Res Function(_$ScreenStateImpl<T>) then) =
      __$$ScreenStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, List<Enum> navigationStack, String message, T uiState});
}

/// @nodoc
class __$$ScreenStateImplCopyWithImpl<T, $Res>
    extends _$ScreenStateCopyWithImpl<T, $Res, _$ScreenStateImpl<T>>
    implements _$$ScreenStateImplCopyWith<T, $Res> {
  __$$ScreenStateImplCopyWithImpl(
      _$ScreenStateImpl<T> _value, $Res Function(_$ScreenStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? navigationStack = null,
    Object? message = null,
    Object? uiState = freezed,
  }) {
    return _then(_$ScreenStateImpl<T>(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      navigationStack: null == navigationStack
          ? _value._navigationStack
          : navigationStack // ignore: cast_nullable_to_non_nullable
              as List<Enum>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      uiState: freezed == uiState
          ? _value.uiState
          : uiState // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ScreenStateImpl<T> implements _ScreenState<T> {
  const _$ScreenStateImpl(
      {this.isLoading = false,
      final List<Enum> navigationStack = const [],
      this.message = '',
      required this.uiState})
      : _navigationStack = navigationStack;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Enum> _navigationStack;
  @override
  @JsonKey()
  List<Enum> get navigationStack {
    if (_navigationStack is EqualUnmodifiableListView) return _navigationStack;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_navigationStack);
  }

  @override
  @JsonKey()
  final String message;
  @override
  final T uiState;

  @override
  String toString() {
    return 'ScreenState<$T>(isLoading: $isLoading, navigationStack: $navigationStack, message: $message, uiState: $uiState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenStateImpl<T> &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._navigationStack, _navigationStack) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.uiState, uiState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_navigationStack),
      message,
      const DeepCollectionEquality().hash(uiState));

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenStateImplCopyWith<T, _$ScreenStateImpl<T>> get copyWith =>
      __$$ScreenStateImplCopyWithImpl<T, _$ScreenStateImpl<T>>(
          this, _$identity);
}

abstract class _ScreenState<T> implements ScreenState<T> {
  const factory _ScreenState(
      {final bool isLoading,
      final List<Enum> navigationStack,
      final String message,
      required final T uiState}) = _$ScreenStateImpl<T>;

  @override
  bool get isLoading;
  @override
  List<Enum> get navigationStack;
  @override
  String get message;
  @override
  T get uiState;

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScreenStateImplCopyWith<T, _$ScreenStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
