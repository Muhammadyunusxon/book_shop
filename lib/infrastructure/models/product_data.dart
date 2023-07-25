import 'dart:convert';

import 'shop_data.dart';


List<ProductData> productDataFromJson(String str, List<ShopData> shops) =>
    List<ProductData>.from(
        json.decode(str).map((x) => ProductData.fromJson(x, shops)));

String productDataToJson(List<ProductData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductData {
  int? id;
  String? name;
  String? img;
  int? category;
  double? rate;
  int? order;
  int? price;
  int? discount;
  int? shopId;
  String? status;
  String? description;
  bool? isPopular;
  ShopData? shop;

  ProductData({
    this.id,
    this.name,
    this.img,
    this.category,
    this.rate,
    this.order,
    this.price,
    this.discount,
    this.shopId,
    this.status,
    this.description,
    this.isPopular,
    this.shop,
  });

  ProductData copyWith({
    int? id,
    String? name,
    String? img,
    int? category,
    double? rate,
    int? order,
    int? price,
    int? discount,
    int? shopId,
    String? status,
    String? description,
    bool? isPopular,
    ShopData? shop,
  }) =>
      ProductData(
        id: id ?? this.id,
        name: name ?? this.name,
        img: img ?? this.img,
        category: category ?? this.category,
        rate: rate ?? this.rate,
        order: order ?? this.order,
        price: price ?? this.price,
        discount: discount ?? this.discount,
        shopId: shopId ?? this.shopId,
        status: status ?? this.status,
        description: description ?? this.description,
        isPopular: isPopular ?? this.isPopular,
        shop: shop ?? this.shop,
      );

  factory ProductData.fromJson(
      Map<String, dynamic> json, List<ShopData> shops) {
    ShopData? shopData;
    for (int i = 0; i < shops.length; i++) {
      if (shops[i].id == json["shopId"]) {
        shopData = shops[i];
        break;
      }
    }
    return ProductData(
        id: json["id"],
        name: json["name"],
        img: json["img"],
        category: json["category"],
        rate: json["rate"]?.toDouble(),
        order: json["order"],
        price: json["price"],
        discount: json["discount"],
        shopId: json["shopId"],
        status: json["status"],
        description: json["description"],
        isPopular: json["isPopular"],
        shop: shopData,);
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "img": img,
        "category": category,
        "rate": rate,
        "order": order,
        "price": price,
        "discount": discount,
        "shopId": shopId,
        "status": status,
        "description": description,
        "isPopular": isPopular,
        "shop": shop?.toJson(),
      };
}
