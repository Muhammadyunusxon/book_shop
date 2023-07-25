import 'dart:convert';

import 'product_data.dart';

List<CartlData> cartlDataFromJson(String str, List<ProductData>? product) =>
    List<CartlData>.from(
        json.decode(str).map((x) => CartlData.fromJson(x, product)));

String cartlDataToJson(List<CartlData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CartlData {
  int? productId;
  int? count;
  int? totalCount;
  ProductData? product;

  CartlData({this.productId, this.count, this.product, this.totalCount});

  CartlData copyWith(
          {int? productId,
          int? count,
          ProductData? product,
          int? totalCount}) =>
      CartlData(
          productId: productId ?? this.productId,
          totalCount: totalCount ?? this.totalCount,
          count: count ?? this.count,
          product: product ?? this.product);

  factory CartlData.fromJson(
      Map<String, dynamic> json, List<ProductData>? products) {
    ProductData? product;
    if (products != null) {
      for (int i = 0; i < products.length; i++) {
        if (products[i].id == json["productId"]) {
          product = products[i];
          break;
        }
      }
    }

    return CartlData(
        productId: json["productId"],
        count: json["count"],
        product: product,
        totalCount: json["totalCount"]);
  }

  Map<String, dynamic> toJson() => {
        "productId": productId,
        "count": count,
        "totalCount": totalCount,
        "product": product?.toJson()
      };
}
