import 'dart:convert';

List<NotificationData> notificationDataFromJson(String str) => List<NotificationData>.from(json.decode(str).map((x) => NotificationData.fromJson(x)));

String notificationDataToJson(List<NotificationData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NotificationData {
  String? title;
  String? time;
  String? desc;
  bool? isNew;
  String? icon;
  String? status;

  NotificationData({
    this.title,
    this.time,
    this.desc,
    this.isNew,
    this.icon,
    this.status,
  });

  NotificationData copyWith({
    String? title,
    String? time,
    String? desc,
    bool? isNew,
    String? icon,
    String? status,
  }) =>
      NotificationData(
        title: title ?? this.title,
        time: time ?? this.time,
        desc: desc ?? this.desc,
        isNew: isNew ?? this.isNew,
        icon: icon ?? this.icon,
        status: status ?? this.status,
      );

  factory NotificationData.fromJson(Map<String, dynamic> json) => NotificationData(
    title: json["title"],
    time: json["time"],
    desc: json["desc"],
    isNew: json["isNew"],
    icon: json["icon"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "time": time,
    "desc": desc,
    "isNew": isNew,
    "icon": icon,
    "status": status,
  };
}
