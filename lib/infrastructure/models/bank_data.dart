import 'dart:convert';

List<BankData> bankDataFromJson(String str) =>
    List<BankData>.from(json.decode(str).map((x) => BankData.fromJson(x)));

String bankDataToJson(List<BankData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BankData {
  String? name;
  String? bankName;
  String? displayName;

  BankData({
    this.name,
    this.bankName,
    this.displayName,
  });

  BankData copyWith({
    String? name,
    String? bankName,
    String? displayName,
  }) =>
      BankData(
        name: name ?? this.name,
        bankName: bankName ?? this.bankName,
        displayName: displayName ?? this.displayName,
      );

  factory BankData.fromJson(Map<String, dynamic> json) => BankData(
        name: json["name"],
        bankName: json["bank_name"],
        displayName: json["display_name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "bank_name": bankName,
        "display_name": displayName,
      };
}
