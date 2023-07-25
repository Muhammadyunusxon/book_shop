// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/models/bank_data.dart';
import '../../infrastructure/models/transaction_data.dart';

part 'credit_state.freezed.dart';

@freezed
class CreditState with _$CreditState {
  const factory CreditState({
    @Default(false) bool isLoading,
    @Default([]) List<TransactionData> transactions,
    @Default([]) List<BankData> banks,
    @Default(0) int selectBank,
  }) = _CreditState;
}
