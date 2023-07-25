import 'dart:convert';

List<FilterData> filterDataFromJson(String str) =>
    List<FilterData>.from(json.decode(str).map((x) => FilterData.fromJson(x)));

String filterDataToJson(List<FilterData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FilterData {
  String? title;
  List<String>? data;

  FilterData({
    this.title,
    this.data,
  });

  FilterData copyWith({
    String? title,
    List<String>? data,
  }) =>
      FilterData(
        title: title ?? this.title,
        data: data ?? this.data,
      );

  factory FilterData.fromJson(Map<String, dynamic> json) => FilterData(
        title: json["title"],
        data: json["data"] == null
            ? []
            : List<String>.from(json["data"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x)),
      };
}
