// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showPassword => throw _privateConstructorUsedError;
  bool get isKeepLogin => throw _privateConstructorUsedError;
  bool get isLoginError => throw _privateConstructorUsedError;
  bool get isGoogleLoading => throw _privateConstructorUsedError;
  bool get isFacebookLoading => throw _privateConstructorUsedError;
  bool get isAppleLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool showPassword,
      bool isKeepLogin,
      bool isLoginError,
      bool isGoogleLoading,
      bool isFacebookLoading,
      bool isAppleLoading});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? showPassword = null,
    Object? isKeepLogin = null,
    Object? isLoginError = null,
    Object? isGoogleLoading = null,
    Object? isFacebookLoading = null,
    Object? isAppleLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isKeepLogin: null == isKeepLogin
          ? _value.isKeepLogin
          : isKeepLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginError: null == isLoginError
          ? _value.isLoginError
          : isLoginError // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoogleLoading: null == isGoogleLoading
          ? _value.isGoogleLoading
          : isGoogleLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFacebookLoading: null == isFacebookLoading
          ? _value.isFacebookLoading
          : isFacebookLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppleLoading: null == isAppleLoading
          ? _value.isAppleLoading
          : isAppleLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool showPassword,
      bool isKeepLogin,
      bool isLoginError,
      bool isGoogleLoading,
      bool isFacebookLoading,
      bool isAppleLoading});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? showPassword = null,
    Object? isKeepLogin = null,
    Object? isLoginError = null,
    Object? isGoogleLoading = null,
    Object? isFacebookLoading = null,
    Object? isAppleLoading = null,
  }) {
    return _then(_$_AuthState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isKeepLogin: null == isKeepLogin
          ? _value.isKeepLogin
          : isKeepLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginError: null == isLoginError
          ? _value.isLoginError
          : isLoginError // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoogleLoading: null == isGoogleLoading
          ? _value.isGoogleLoading
          : isGoogleLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFacebookLoading: null == isFacebookLoading
          ? _value.isFacebookLoading
          : isFacebookLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppleLoading: null == isAppleLoading
          ? _value.isAppleLoading
          : isAppleLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {this.isLoading = false,
      this.showPassword = false,
      this.isKeepLogin = true,
      this.isLoginError = false,
      this.isGoogleLoading = false,
      this.isFacebookLoading = false,
      this.isAppleLoading = false});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool showPassword;
  @override
  @JsonKey()
  final bool isKeepLogin;
  @override
  @JsonKey()
  final bool isLoginError;
  @override
  @JsonKey()
  final bool isGoogleLoading;
  @override
  @JsonKey()
  final bool isFacebookLoading;
  @override
  @JsonKey()
  final bool isAppleLoading;

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, showPassword: $showPassword, isKeepLogin: $isKeepLogin, isLoginError: $isLoginError, isGoogleLoading: $isGoogleLoading, isFacebookLoading: $isFacebookLoading, isAppleLoading: $isAppleLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword) &&
            (identical(other.isKeepLogin, isKeepLogin) ||
                other.isKeepLogin == isKeepLogin) &&
            (identical(other.isLoginError, isLoginError) ||
                other.isLoginError == isLoginError) &&
            (identical(other.isGoogleLoading, isGoogleLoading) ||
                other.isGoogleLoading == isGoogleLoading) &&
            (identical(other.isFacebookLoading, isFacebookLoading) ||
                other.isFacebookLoading == isFacebookLoading) &&
            (identical(other.isAppleLoading, isAppleLoading) ||
                other.isAppleLoading == isAppleLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      showPassword,
      isKeepLogin,
      isLoginError,
      isGoogleLoading,
      isFacebookLoading,
      isAppleLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final bool isLoading,
      final bool showPassword,
      final bool isKeepLogin,
      final bool isLoginError,
      final bool isGoogleLoading,
      final bool isFacebookLoading,
      final bool isAppleLoading}) = _$_AuthState;

  @override
  bool get isLoading;
  @override
  bool get showPassword;
  @override
  bool get isKeepLogin;
  @override
  bool get isLoginError;
  @override
  bool get isGoogleLoading;
  @override
  bool get isFacebookLoading;
  @override
  bool get isAppleLoading;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
