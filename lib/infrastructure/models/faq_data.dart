import 'dart:convert';

List<FaqData> faqDataFromJson(String str) =>
    List<FaqData>.from(json.decode(str).map((x) => FaqData.fromJson(x)));

String faqDataToJson(List<FaqData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FaqData {
  int? id;
  String? title;
  String? desc;

  FaqData({this.id, this.title, this.desc});

  FaqData copyWith({int? id, String? title, String? desc}) => FaqData(
        id: id ?? this.id,
        title: title ?? this.title,
        desc: desc ?? this.desc,
      );

  factory FaqData.fromJson(Map<String, dynamic> json) =>
      FaqData(id: json["id"], title: json["title"], desc: json["desc"]);

  Map<String, dynamic> toJson() => {"id": id, "title": title, "desc": desc};
}
