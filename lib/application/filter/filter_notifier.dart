import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'filter_state.dart';

class FilterNotifier extends StateNotifier<FilterState> {
  FilterNotifier() : super(const FilterState());

  getFilters() async {
    // final data = await rootBundle.loadString(Assets.groceryDataFilter);
    // List<FilterData> filters = filterDataFromJson(data);
    // state = state.copyWith(filters: filters);
    // List<int> list = [];
    // for (int i = 0; i < filters.length; i++) {
    //   list.add(-1);
    // }
    // state = state.copyWith(selectFilters: list);
  }

  changeFilter(int index, int i) {
    List<int> list = List.from(state.selectFilters);
    list[index] = i;
    state = state.copyWith(selectFilters: list);
  }
}
