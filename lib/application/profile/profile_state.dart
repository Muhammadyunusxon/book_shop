// ignore_for_file: depend_on_referenced_packages


import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) bool isLoading,
    @Default(null) String? gender,
    @Default(null) String? image,
  }) = _ProfileState;
}
