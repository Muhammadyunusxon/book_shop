import 'dart:convert';

import 'location_data.dart';
import 'open_day.dart';

List<ShopData> shopDataFromJson(String str) => List<ShopData>.from(json.decode(str).map((x) => ShopData.fromJson(x)));

String shopDataToJson(List<ShopData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ShopData {
  int? id;
  String? shopName;
  String? img;
  double? rate;
  int? order;
  bool? isAds;
  String? overview;
  LocationData? location;
  List<OpenDay>? openDays;

  ShopData({
    this.id,
    this.shopName,
    this.img,
    this.rate,
    this.order,
    this.isAds,
    this.overview,
    this.location,
    this.openDays,
  });

  ShopData copyWith({
    int? id,
    String? shopName,
    String? img,
    double? rate,
    int? order,
    bool? isAds,
    String? overview,
    LocationData? location,
    List<OpenDay>? openDays,
  }) =>
      ShopData(
        id: id ?? this.id,
        shopName: shopName ?? this.shopName,
        img: img ?? this.img,
        rate: rate ?? this.rate,
        order: order ?? this.order,
        isAds: isAds ?? this.isAds,
        overview: overview ?? this.overview,
        location: location ?? this.location,
        openDays: openDays ?? this.openDays,
      );

  factory ShopData.fromJson(Map<String, dynamic> json) => ShopData(
    id: json["id"],
    shopName: json["shop_name"],
    img: json["img"],
    rate: json["rate"]?.toDouble(),
    order: json["order"],
    isAds: json["is_ads"],
    overview: json["overview"],
    location: json["location"] == null ? null : LocationData.fromJson(json["location"]),
    openDays: json["open_days"] == null ? [] : List<OpenDay>.from(json["open_days"]!.map((x) => OpenDay.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "shop_name": shopName,
    "img": img,
    "rate": rate,
    "order": order,
    "is_ads": isAds,
    "overview": overview,
    "location": location?.toJson(),
    "open_days": openDays == null ? [] : List<dynamic>.from(openDays!.map((x) => x.toJson())),
  };
}

