// ignore_for_file: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/models/faq_data.dart';
import '../../infrastructure/models/friends_data.dart';

part 'setting_state.freezed.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    @Default([]) List<FriendsData> friends,
    @Default([])  List<FaqData> faqs,
    @Default([])  List<FaqData> faqList,
    @Default(["General", "Account", "Service", "Payment"])  List<String> tabList,
    @Default(-1) int selectFaq,
    @Default(false) bool isFaqSearch,
  }) = _SettingState;
}
