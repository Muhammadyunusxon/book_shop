import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../infrastructure/models/models.dart';
import 'setting_state.dart';

class SettingNotifier extends StateNotifier<SettingState> {
  SettingNotifier() : super(const SettingState());

  initial() {
    getFriends();
    getFaq();
  }

  getFriends() async {
    // final data = await rootBundle.loadString(Assets.cartDataFriends);
    // List<FriendsData> friends = friendsDataFromJson(data);
    // state = state.copyWith(friends: friends);
  }

  changeInvite(int index) {
    List<FriendsData> friends = List.from(state.friends);
    friends[index] =
        friends[index].copyWith(invite: !(friends[index].invite ?? false));
    state = state.copyWith(friends: friends);
  }

  changeSelectFaq(int index) {
    if (index == state.selectFaq) {
      state = state.copyWith(selectFaq: -1);
    } else {
      state = state.copyWith(selectFaq: index);
    }
  }

  getFaq() async {
    // final data = await rootBundle.loadString(Assets.cartDataFaq);
    // List<FaqData> faqs = faqDataFromJson(data);
    // state = state.copyWith(faqs: faqs, faqList: faqs);
  }

  changeFaqSearch(String search) {
    if (search.isNotEmpty) {
      state = state.copyWith(isFaqSearch: search.isNotEmpty ? true : false);
      List<FaqData> list = [];
      for (int i = 0; i < state.faqList.length; i++) {
        if (state.faqList[i].title?.startsWith(search) ?? false) {
          list.add(state.faqList[i]);
        }
      }
      state = state.copyWith(faqs: list);
    } else {
      state = state.copyWith(faqs: state.faqList);
    }
  }
}
