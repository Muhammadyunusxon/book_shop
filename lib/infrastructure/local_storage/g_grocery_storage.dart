import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/models.dart';
import '../service/app_constants.dart';
import '../service/card_utils.dart';

abstract class LocalStorage {
  static SharedPreferences? local;

  static Future init() async {
    local = await SharedPreferences.getInstance();
  }

  static setUser(UserData user) async {
    await initialMessages();
    await initialCards();
    return await local?.setString(
        AppConstants.keyUser, jsonEncode(user.toJson()));
  }

  static UserData? getUser() {
    final String encoded = local?.getString(AppConstants.keyUser) ?? '';

    if (encoded.isEmpty) {
      return null;
    }
    return UserData.fromJson(jsonDecode(encoded));
  }

  static deleteUser() => local?.clear();

  static Future<void> setToken(String? token) async {
    await local?.setString(AppConstants.keyToken, token ?? '');
  }
  static String getToken() => local?.getString(AppConstants.keyToken) ?? '';

  static void deleteToken() => local?.remove(AppConstants.keyToken);


  static setShopLikes(String id) {
    List<String> lst = local?.getStringList(AppConstants.keyShopLike) ?? [];
    lst.add(id);
    local?.setStringList(AppConstants.keyShopLike, lst);
  }

  static Future<List<String>> getShopLikes() async =>
      local?.getStringList(AppConstants.keyShopLike) ?? [];

  static removeShopLikes(String id) async {
    List<String> list = local?.getStringList(AppConstants.keyShopLike) ?? [];
    list.removeWhere((element) => element == id.toString());
    await local?.setStringList(AppConstants.keyShopLike, list);
  }

  static Future<List<String>> getSocialLikes() async =>
      local?.getStringList(AppConstants.keySocialLike) ?? [];

  static setSocialLikes(String id) {
    List<String> lst = local?.getStringList(AppConstants.keySocialLike) ?? [];
    lst.add(id);
    local?.setStringList(AppConstants.keySocialLike, lst);
  }

  static removeSocialLikes(String id) async {
    List<String> list = local?.getStringList(AppConstants.keySocialLike) ?? [];
    list.removeWhere((element) => element == id.toString());
    await local?.setStringList(AppConstants.keySocialLike, list);
  }

  static Future<bool> deleteSocialLikes(String id) async =>
      await local?.remove(AppConstants.keySocialLike) ?? false;

  static Future<bool> deleteShopLikes(String id) async =>
      await local?.remove(AppConstants.keyShopLike) ?? false;

  static setProductLikes(String id) {
    List<String> lst = local?.getStringList(AppConstants.keyProductLike) ?? [];
    lst.add(id);
    local?.setStringList(AppConstants.keyProductLike, lst);
  }

  static Future<List<String>> getProductLikes() async =>
      local?.getStringList(AppConstants.keyProductLike) ?? [];

  static removeProductLikes(String id) async {
    List<String> list = local?.getStringList(AppConstants.keyProductLike) ?? [];
    list.removeWhere((element) => element == id.toString());
    await local?.setStringList(AppConstants.keyProductLike, list);
  }

  static Future<bool> deleteProductLikes(String id) async =>
      await local?.remove(AppConstants.keyProductLike) ?? false;

  static initialMessages() async {
    if (local?.getString(AppConstants.keyMessage)?.isEmpty ?? true) {
      await setMessage([
        MessageData(shopId: 1, chats: [
          ChatData(
            isUser: false,
            title:
                "I've packed your order. I will arrive at your place in 5 minutes 😁",
            date: DateTime.now()
                .subtract(const Duration(days: 7, hours: 2, minutes: 5)),
          ),
          ChatData(
            isUser: false,
            // img: Assets.temp1,
            date: DateTime.now()
                .subtract(const Duration(days: 7, hours: 2, minutes: 15)),
          ),
          ChatData(
            isUser: false,
            title: "Great! I will arrive soon...",
            date: DateTime.now()
                .subtract(const Duration(days: 7, hours: 3, minutes: 25)),
          ),
        ])
      ]);
    }
  }

  static setMessage(List<MessageData> messages) {
    local?.setString(AppConstants.keyMessage, messageDataToJson(messages));
  }

  static List<MessageData> getMessage(List<ShopData> shops) {
    String encoded = local?.getString(AppConstants.keyMessage) ?? '';
    List<MessageData> messages =
        encoded.isNotEmpty ? messageDataFromJson(encoded, shops) : [];
    return messages;
  }

  static initialCards() async {
    await setCard(
      CardData(
          name: "G Card",
          number: "4444 2222 3333 1234",
          expiryDate: "05/28",
          cvv: "122",
          type: CardType.Visa.name),
    );
  }

  static setCard(CardData card) {
    String encoded = local?.getString(AppConstants.keyCard) ?? '';
    List<CardData> cards = encoded.isNotEmpty ? cardDataFromJson(encoded) : [];
    cards.add(card);

    local?.setString(AppConstants.keyCard, cardDataToJson(cards));
  }

  static List<CardData> getCards() {
    String encoded = local?.getString(AppConstants.keyCard) ?? '';
    List<CardData> cards = encoded.isNotEmpty ? cardDataFromJson(encoded) : [];
    return cards;
  }

  static removeCard(String number) async {
    String encoded = local?.getString(AppConstants.keyCard) ?? '';
    List<CardData> cards = encoded.isNotEmpty ? cardDataFromJson(encoded) : [];
    cards.removeWhere((element) => element.number == number);
    local?.setString(AppConstants.keyCard, cardDataToJson(cards));
  }

  static increaseCount(CartlData cart) {
    String encoded = local?.getString(AppConstants.keyCartCounts) ?? '';
    List<CartlData> carts =
        encoded.isNotEmpty ? cartlDataFromJson(encoded, null) : [];

    for (int i = 0; i < carts.length; i++) {
      if (carts[i].productId == cart.productId) {
        carts.removeWhere((element) => element.productId == cart.productId);
      }
    }
    if (cart.count != 0) {
      carts.add(cart.copyWith(
          count: (cart.count ?? 0),
          totalCount: cart.totalCount ?? 0,
          product: cart.product));
    }

    local?.setString(AppConstants.keyCartCounts, cartlDataToJson(carts));
  }

  static List<CartlData> getCount({List<ProductData>? product}) {
    String encoded = local?.getString(AppConstants.keyCartCounts) ?? '';
    List<CartlData> cart =
        encoded.isNotEmpty ? cartlDataFromJson(encoded, product) : [];
    return cart;
  }

  static CartlData? getSingleCount(int productId) {
    String encoded = local?.getString(AppConstants.keyCartCounts) ?? '';
    List<CartlData> carts =
        encoded.isNotEmpty ? cartlDataFromJson(encoded, null) : [];
    for (int i = 0; i < carts.length; i++) {
      if (carts[i].productId == productId) {
        return carts[i];
      }
    }
    return null;
  }

  static setBank(BankData bank) {
    String encoded = local?.getString(AppConstants.keyBank) ?? '';
    List<BankData> banks = encoded.isNotEmpty ? bankDataFromJson(encoded) : [];
    banks.add(bank);
    local?.setString(AppConstants.keyBank, bankDataToJson(banks));
  }

  static List<BankData> getBanks() {
    String encoded = local?.getString(AppConstants.keyBank) ?? '';
    List<BankData> banks = encoded.isNotEmpty ? bankDataFromJson(encoded) : [];
    return banks;
  }

  static removeBank(String bankName) async {
    String encoded = local?.getString(AppConstants.keyBank) ?? '';
    List<BankData> banks = encoded.isNotEmpty ? bankDataFromJson(encoded) : [];
    banks.removeWhere((element) => element.bankName == bankName);
    local?.setString(AppConstants.keyBank, bankDataToJson(banks));
  }

  static clearCart() {
    local?.remove(AppConstants.keyCartCounts);
  }
}
