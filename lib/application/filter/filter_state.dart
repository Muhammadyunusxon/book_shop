// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../infrastructure/models/models.dart';
part 'filter_state.freezed.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState({
    @Default(false) bool isLoading,
    @Default([]) List<FilterData> filters,
    @Default([]) List<int> selectFilters,
  }) = _FilterState;
}
