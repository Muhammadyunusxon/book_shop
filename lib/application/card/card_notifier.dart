import 'dart:ui';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../infrastructure/local_storage/g_grocery_storage.dart';
import '../../infrastructure/models/models.dart';
import '../../infrastructure/service/card_utils.dart';
import 'card_state.dart';

class CardNotifier extends StateNotifier<CardState> {
  CardNotifier() : super(const CardState());

  initial() {}

  changeName(String? name) => state = state.copyWith(name: name ?? "");

  changeNumber(String? number) => state = state.copyWith(number: number ?? "");

  changeDate(String? date) => state = state.copyWith(expiryDate: date ?? "");

  changeCvv(String? cvv) => state = state.copyWith(cvv: cvv ?? "");

  setCard(VoidCallback onSuccess) async {
    await LocalStorage.setCard(CardData(
        name: state.name,
        number: state.number,
        expiryDate: state.expiryDate,
        cvv: state.cvv,
        type: CardUtils.getCardTypeFrmNumber(state.number).name));
    state = state.copyWith(name: "", number: '', expiryDate: '', cvv: '');
    onSuccess();
  }
}
