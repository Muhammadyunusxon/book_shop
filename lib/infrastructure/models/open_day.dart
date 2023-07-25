class OpenDay {
  String? day;
  String? hours;

  OpenDay({this.day, this.hours});

  OpenDay copyWith({String? day, String? hours}) =>
      OpenDay(day: day ?? this.day, hours: hours ?? this.hours);

  factory OpenDay.fromJson(Map<String, dynamic> json) =>
      OpenDay(day: json["day"], hours: json["hours"]);

  Map<String, dynamic> toJson() => {"day": day, "hours": hours};
}
