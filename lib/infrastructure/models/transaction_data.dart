import 'dart:convert';

List<TransactionData> transactionDataFromJson(String str) =>
    List<TransactionData>.from(
        json.decode(str).map((x) => TransactionData.fromJson(x)));

String transactionDataToJson(List<TransactionData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TransactionData {
  int? id;
  String? image;
  String? title;
  int? price;
  String? date;
  String? status;
  String? type;

  TransactionData({
    this.id,
    this.image,
    this.title,
    this.price,
    this.date,
    this.status,
    this.type,
  });

  TransactionData copyWith({
    int? id,
    String? image,
    String? title,
    int? price,
    String? date,
    String? status,
    String? type,
  }) =>
      TransactionData(
        id: id ?? this.id,
        image: image ?? this.image,
        title: title ?? this.title,
        price: price ?? this.price,
        date: date ?? this.date,
        status: status ?? this.status,
        type: type ?? this.type,
      );

  factory TransactionData.fromJson(Map<String, dynamic> json) =>
      TransactionData(
        id: json["id"],
        image: json["image"],
        title: json["title"],
        price: json["price"],
        date: json["date"],
        status: json["status"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "title": title,
        "price": price,
        "date": date,
        "status": status,
        "type": type,
      };
}
