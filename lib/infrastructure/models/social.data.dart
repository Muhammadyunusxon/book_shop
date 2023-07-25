import 'dart:convert';

import 'shop_data.dart';


List<SocialData> socialDataFromJson(String str, List<ShopData> shops) =>
    List<SocialData>.from(
        json.decode(str).map((x) => SocialData.fromJson(x, shops)));

String socialDataToJson(List<SocialData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SocialData {
  int? shopId;
  String? text;
  int? likesCount;
  int? id;
  String? img;
  String? time;
  ShopData? shop;

  SocialData(
      {this.shopId,
      this.text,
      this.likesCount,
      this.id,
      this.img,
      this.time,
      this.shop});

  SocialData copyWith(
          {int? shopId,
          String? text,
           int? id,
          int? likesCount,
          String? img,
          String? time,
          ShopData? shop}) =>
      SocialData(
        id: id?? this.id,
          shopId: shopId ?? this.shopId,
          text: text ?? this.text,
          likesCount: likesCount ?? this.likesCount,
          img: img ?? this.img,
          time: time ?? this.time,
          shop: shop ?? this.shop);

  factory SocialData.fromJson(Map<String, dynamic> json, List<ShopData> shops) {
    ShopData? shopData;
    for (int i = 0; i < shops.length; i++) {
      if (shops[i].id == json["shop_id"]) {
        shopData = shops[i];
        break;
      }
    }
    return SocialData(
      id: json['id'],
        shopId: json["shop_id"],
        text: json["text"],
        likesCount: json["likes_count"],
        img: json["img"],
        time: json["time"],
        shop: shopData);
  }

  Map<String, dynamic> toJson() => {
        "shop_id": shopId,
        "text": text,
        "likes_count": likesCount,
        "img": img,
        "time": time,
        "id" : id
      };
}
