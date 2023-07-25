import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../infrastructure/local_storage/g_grocery_storage.dart';
import '../../infrastructure/models/models.dart';
import 'credit_state.dart';

class CreditNotifier extends StateNotifier<CreditState> {
  CreditNotifier() : super(const CreditState());

  initial() async {
    await getTransaction();
    getBanks();
  }

  getTransaction() async {
    // final data = await rootBundle.loadString(Assets.groceryDataTransactions);
    // List<TransactionData> transactions = transactionDataFromJson(data);
    // state = state.copyWith(transactions: transactions);
  }

  getBanks() async {
    List<BankData> banks = LocalStorage.getBanks();
    state = state.copyWith(banks: banks);
  }

  addBank(BankData bank) async {
    List<BankData> banks = List.from(state.banks);
    banks.add(bank);
    state = state.copyWith(banks: banks);
    LocalStorage.setBank(bank);
  }

  changeBank(int selectBank) => state = state.copyWith(selectBank: selectBank);
}
