import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../infrastructure/local_storage/g_grocery_storage.dart';

import 'shop_state.dart';

class ShopNotifier extends StateNotifier<ShopState> {
  ShopNotifier() : super(const ShopState());

  init() async {
    await getShop();
    getShopLikes();
  }

  getShop() async {
    // final data = await rootBundle.loadString(Assets.groceryDataShop);
    // List<ShopData> shops = shopDataFromJson(data);
    // state = state.copyWith(shops: shops);
  }

  getUsers() async {
    // final data = await rootBundle.loadString(Assets.cartDataFriends);
    // List<FriendsData> friends = friendsDataFromJson(data);
    // state = state.copyWith(friends: friends);
  }

  setSelectedIndex({required int index}) {
    state = state.copyWith(selectedIndex: index);
  }

  getShopLikes() async =>
      state = state.copyWith(shopLikes: await LocalStorage.getShopLikes());

  changeShopLike(int? id) {
    String value = "${id ?? 0}";

    List<String> list = List.from(state.shopLikes);
    if (state.shopLikes.contains(value)) {
      list.remove(value);

      state = state.copyWith(shopLikes: list);
      LocalStorage.removeShopLikes(value);
    } else {
      list.add(value);
      state = state.copyWith(shopLikes: list);
      LocalStorage.setShopLikes(value);
    }
  }
}
