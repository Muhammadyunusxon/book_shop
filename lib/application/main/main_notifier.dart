import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'main_state.dart';

class MainNotifier extends StateNotifier<MainState> {
  MainNotifier() : super(const MainState());

  changeIndex(int index) {
    state = state.copyWith(selectIndex: index);
  }
}
