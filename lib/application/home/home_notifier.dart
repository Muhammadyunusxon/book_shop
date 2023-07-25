import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'home_state.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier() : super(const HomeState());

  initial() async {
    getCategory();
  }

  getCategory() async {
    // final data = await rootBundle.loadString(Assets.groceryDataCategory);
    // List<CategoryData> categories = categoryDataFromJson(data);
    // state = state.copyWith(categories: categories);
  }
}
