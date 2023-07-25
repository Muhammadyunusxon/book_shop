import 'dart:convert';

List<FriendsData> friendsDataFromJson(String str) => List<FriendsData>.from(
    json.decode(str).map((x) => FriendsData.fromJson(x)));

String friendsDataToJson(List<FriendsData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FriendsData {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;
  String? phone;
  String? comment;
  String? likesCount;
  String? commentTime;
  bool? invite;

  FriendsData({
    this.id,
    this.comment,
    this.commentTime,
    this.likesCount,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
    this.phone,
    this.invite,
  });

  FriendsData copyWith({
    int? id,
    String? email,
    String? firstName,
    String? lastName,
    String? avatar,
    String? phone,
    String? comment,
    String? likesCount,
    String? commentTime,
    bool? invite,
  }) =>
      FriendsData(
        id: id ?? this.id,
        comment: comment ?? this.comment,
        commentTime: commentTime ?? this.commentTime,
        likesCount: likesCount ?? this.likesCount,
        email: email ?? this.email,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        avatar: avatar ?? this.avatar,
        phone: phone ?? this.phone,
        invite: invite ?? this.invite,
      );

  factory FriendsData.fromJson(Map<String, dynamic> json) => FriendsData(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
        phone: json["phone"],
        comment: json["comment"],
        commentTime: json["comment_time"],
        likesCount: json["likes_count"],
        invite: json["invite"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
        "phone": phone,
        "invite": invite,
        "comment": comment,
        "likes_count": likesCount,
        "comment_time": commentTime,
        
      };
}
