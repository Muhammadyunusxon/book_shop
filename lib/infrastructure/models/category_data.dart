import 'dart:convert';

List<CategoryData> categoryDataFromJson(String str) => List<CategoryData>.from(json.decode(str).map((x) => CategoryData.fromJson(x)));

String categoryDataToJson(List<CategoryData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryData {
  int? id;
  String? title;
  String? icon;

  CategoryData({
    this.id,
    this.title,
    this.icon,
  });

  CategoryData copyWith({
    int? id,
    String? title,
    String? icon,
  }) =>
      CategoryData(
        id: id ?? this.id,
        title: title ?? this.title,
        icon: icon ?? this.icon,
      );

  factory CategoryData.fromJson(Map<String, dynamic> json) => CategoryData(
    id: json["id"],
    title: json["title"],
    icon: json["icon"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "icon": icon,
  };
}
