import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../infrastructure/local_storage/g_grocery_storage.dart';
import '../../infrastructure/models/models.dart';

import 'product_state.dart';

class ProductNotifier extends StateNotifier<ProductState> {
  ProductNotifier() : super(const ProductState());

  initial(List<ShopData> shops) async {
    getProducts(shops);
    getProductLikes();
  }

  getProductLikes() async => state =
      state.copyWith(productLikes: await LocalStorage.getProductLikes());

  changeProductLike(int? id) {
    String value = "${id ?? 0}";
    List<String> list = List.from(state.productLikes);
    if (state.productLikes.contains(value)) {
      list.remove(value);
      state = state.copyWith(productLikes: list);
      LocalStorage.removeProductLikes(value);
    } else {
      list.add(value);
      state = state.copyWith(productLikes: list);
      LocalStorage.setProductLikes(value);
    }
  }

  getProducts(List<ShopData> shops) async {
    // final data = await rootBundle.loadString(Assets.groceryDataProducts);
    // List<ProductData> products = productDataFromJson(data, shops);
    // state = state.copyWith(products: products);
  }

  changeQuery(String query) {
    if (query.isNotEmpty) {
      List<ProductData> list = [];
      for (int i = 0; i < state.products.length; i++) {
        if (state.products[i].name?.startsWith(query) ?? false) {
          list.add(state.products[i]);
        }
      }
      state = state.copyWith(searchProducts: list);
    } else {
      state = state.copyWith(searchProducts: []);
    }
    state = state.copyWith(query: query);
  }

  increaseCount(CartlData cart, int index) {
    int sum;
    state = state.copyWith(count: state.count + 1);
    sum = (state.products[index].price)! * (state.count);

    state = state.copyWith(totalPrice: sum);
  }

  decreaseCount(CartlData cart, int index) {
    int sum;
    if (state.count > 0) {
      state = state.copyWith(count: state.count + -1);
      sum = state.totalPrice - state.products[index].price!.toInt();
      state = state.copyWith(totalPrice: sum);
    }
  }

  getCounts(int productId) {
    CartlData? cart = LocalStorage.getSingleCount(productId);
    state = state.copyWith(
        count: cart?.count ?? 0, totalPrice: cart?.totalCount ?? 0);
  }

  addToCart(int index) {
    LocalStorage.increaseCount(CartlData(
        product: state.products[index],
        count: state.count,
        productId: state.products[index].id,
        totalCount: state.totalPrice));
  }

  update() {
    state = state.copyWith(products: state.products);
  }

  changeFilter(int index) {
    List<bool> list = List.from(state.selectFilters);
    list[index] = !list[index];
    state = state.copyWith(selectFilters: list);
  }
}
