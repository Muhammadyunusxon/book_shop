// ignore_for_file: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../infrastructure/models/models.dart';

part 'payment_state.freezed.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState({
    @Default(false) bool isLoading,
    @Default(0) int selectedIndex,
    @Default(0) int selectedDiscountsIndex,
    @Default([]) List<CardData> cardList,
  }) = _PaymentState;
}
