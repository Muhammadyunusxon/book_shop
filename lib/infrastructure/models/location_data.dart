class LocationData {
  String? title;
  double? lat;
  double? lon;

  LocationData({this.title, this.lat, this.lon});

  LocationData copyWith({String? title, double? lat, double? lon}) =>
      LocationData(
        title: title ?? this.title,
        lat: lat ?? this.lat,
        lon: lon ?? this.lon,
      );

  factory LocationData.fromJson(Map<String, dynamic> json) =>
      LocationData(title: json["title"], lat: json["lat"], lon: json["lon"]);

  Map<String, dynamic> toJson() => {"title": title, "lat": lat, "lon": lon};
}
