class ChatData {
  String? title;
  DateTime? date;
  String? img;
  bool? isUser;

  ChatData({
    this.title,
    this.date,
    this.img,
    this.isUser,
  });

  ChatData copyWith({
    String? title,
    DateTime? date,
    String? img,
    bool? isUser,
  }) =>
      ChatData(
        title: title ?? this.title,
        date: date ?? this.date,
        img: img ?? this.img,
        isUser: isUser ?? this.isUser,
      );

  factory ChatData.fromJson(Map<String, dynamic> json) => ChatData(
        title: json["title"],
        date: DateTime.tryParse(json["date"] ?? ""),
        img: json["img"],
        isUser: json["is_user"] ?? true,
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "date": date.toString(),
        "img": img,
        "is_user": isUser,
      };
}
