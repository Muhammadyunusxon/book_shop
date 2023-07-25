import 'dart:convert';

import 'chat_data.dart';
import 'shop_data.dart';

List<MessageData> messageDataFromJson(String str, List<ShopData> shops) =>
    List<MessageData>.from(
        json.decode(str).map((x) => MessageData.fromJson(x, shops)));

String messageDataToJson(List<MessageData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MessageData {
  int? shopId;
  ShopData? shop;
  List<ChatData>? chats;

  MessageData({
    this.shopId,
    this.chats,
    this.shop,
  });

  MessageData copyWith({
    int? shopId,
    ShopData? shop,
    List<ChatData>? chats,
  }) =>
      MessageData(
        shopId: shopId ?? this.shopId,
        chats: chats ?? this.chats,
        shop: shop ?? this.shop,
      );

  factory MessageData.fromJson(
      Map<String, dynamic> json, List<ShopData> shops) {
    ShopData? shopData;
    for (int i = 0; i < shops.length; i++) {
      if (shops[i].id == json["shopId"]) {
        shopData = shops[i];
        break;
      }
    }
    return MessageData(
        shopId: json["shopId"],
        chats: json["data"] == null
            ? []
            : List<ChatData>.from(
                json["data"]!.map((x) => ChatData.fromJson(x)),
              ),
        shop: shopData);
  }

  Map<String, dynamic> toJson() => {
        "shopId": shopId,
        "data": chats == null
            ? []
            : List<dynamic>.from(chats!.map((x) => x.toJson())),
      };
}
