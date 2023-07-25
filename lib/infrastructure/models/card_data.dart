import 'dart:convert';

List<CardData> cardDataFromJson(String str) => List<CardData>.from(json.decode(str).map((x) => CardData.fromJson(x)));

String cardDataToJson(List<CardData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CardData {
  String? name;
  String? number;
  String? expiryDate;
  String? cvv;
  String? type;

  CardData({
    this.name,
    this.number,
    this.expiryDate,
    this.cvv,
    this.type,
  });

  CardData copyWith({
    String? name,
    String? number,
    String? expiryDate,
    String? cvv,
    String? type,
  }) =>
      CardData(
        name: name ?? this.name,
        number: number ?? this.number,
        expiryDate: expiryDate ?? this.expiryDate,
        cvv: cvv ?? this.cvv,
        type: type ?? this.type,
      );

  factory CardData.fromJson(Map<String, dynamic> json) => CardData(
    name: json["name"],
    number: json["number"],
    expiryDate: json["expiry_date"],
    cvv: json["cvv"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "number": number,
    "expiry_date": expiryDate,
    "cvv": cvv,
    "type": type,
  };
}
