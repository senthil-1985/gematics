// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String name;
  int rating;
  int played;
  int won;
  int winningPercentage;
  String image;

  UserModel({
    required this.name,
    required this.rating,
    required this.played,
    required this.won,
    required this.winningPercentage,
    required this.image,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    name: json["name"],
    rating: json["rating"],
    played: json["played"],
    won: json["won"],
    winningPercentage: json["winning_percentage"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "rating": rating,
    "played": played,
    "won": won,
    "winning_percentage": winningPercentage,
    "image": image,
  };
}
