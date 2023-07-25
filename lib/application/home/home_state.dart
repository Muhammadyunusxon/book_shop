// ignore_for_file: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../infrastructure/models/models.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default([]) List<StoryData> storyList,
    @Default([]) List<CategoryData> categories,
  }) = _HomeState;
}
