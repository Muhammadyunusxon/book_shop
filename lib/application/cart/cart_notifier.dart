import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../infrastructure/local_storage/g_grocery_storage.dart';
import '../../infrastructure/models/models.dart';
import 'cart_state.dart';

class CartNotifier extends StateNotifier<CartState> {
  CartNotifier() : super(const CartState());

  initial() {
    getCount();
  }

  getCarts(List<ProductData> products) {
    List<CartlData> list = LocalStorage.getCount(product: products);
    state = state.copyWith(cartList: list);
    getTotalPrice(products);
    getCount();
  }

  getTotalPrice(List<ProductData> products) {
    int totalPrice = 0;
    LocalStorage.getCount().forEach((element) {
      int elementTotalCount = element.totalCount ?? 0;
      int elementCount = element.count ?? 0;
      int elementPrice = elementTotalCount * elementCount;
      totalPrice += elementPrice;
    });
    state = state.copyWith(totalPrice: totalPrice);
  }

  getCount() {
    state = state.copyWith(isEmpty: LocalStorage.getCount().isEmpty);
  }
}
