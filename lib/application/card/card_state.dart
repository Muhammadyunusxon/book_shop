// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_state.freezed.dart';

@freezed
class CardState with _$CardState {
  const factory CardState({
    @Default('') String name,
    @Default('') String number,
    @Default('') String expiryDate,
    @Default('') String cvv,
    @Default('') String type,

  }) = _CardState;
}
