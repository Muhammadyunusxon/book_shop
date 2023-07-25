import 'dart:convert';

List<StoryData> storyDataFromJson(String str) => List<StoryData>.from(json.decode(str).map((x) => StoryData.fromJson(x)));

String storyDataToJson(List<StoryData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class StoryData {
  String? title;
  String? img;

  StoryData({
    this.title,
    this.img,
  });

  StoryData copyWith({
    String? title,
    String? img,
  }) =>
      StoryData(
        title: title ?? this.title,
        img: img ?? this.img,
      );

  factory StoryData.fromJson(Map<String, dynamic> json) => StoryData(
    title: json["title"],
    img: json["img"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "img": img,
  };
}
