import 'package:phone_form_field/phone_form_field.dart';

import 'location_data.dart';

class UserData {
  String? firstName;
  String? lastName;
  String? email;
  String? img;
  PhoneNumber? phoneNumber;
  String? gender;
  String? dateOfBirth;
  List<LocationData>? location;

  UserData({
    this.firstName,
    this.lastName,
    this.email,
    this.img,
    this.phoneNumber,
    this.gender,
    this.dateOfBirth,
    this.location,
  });

  UserData copyWith({
    String? firstName,
    String? lastName,
    String? email,
    String? img,
    PhoneNumber? phoneNumber,
    String? gender,
    String? dateOfBirth,
    List<LocationData>? location,
  }) =>
      UserData(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        img: img ?? this.img,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        gender: gender ?? this.gender,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        location: location ?? this.location,
      );

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        img: json["img"],
        phoneNumber: json["phone_number"] == null
            ? null
            : PhoneNumber.fromJson(json["phone_number"]),
        gender: json["gender"],
        dateOfBirth: json["dateOfBirth"],
        location: json["location"] == null
            ? null
            : List<LocationData>.from(
                json["location"].map((x) => LocationData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "img": img,
        "phone_number": phoneNumber?.toJson(),
        "gender": gender,
        "dateOfBirth": dateOfBirth,
        "location": location != null? List<dynamic>.from(location!.map((x) => x.toJson())) : null,
      };
}
