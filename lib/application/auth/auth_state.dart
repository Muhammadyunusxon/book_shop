// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLoading,
    @Default(false) bool showPassword,
    @Default(true) bool isKeepLogin,
    @Default(false) bool isLoginError,
    @Default(false) bool isGoogleLoading,
    @Default(false) bool isFacebookLoading,
    @Default(false) bool isAppleLoading,
  }) = _AuthState;
}
