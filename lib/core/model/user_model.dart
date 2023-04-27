// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

class UserModel {
    String name;
    String country;
    String yearsExperience;
    String allProjects;
    String clients;
    String about;
    List<String> portfolio;

    UserModel({
        required this.name,
        required this.country,
        required this.yearsExperience,
        required this.allProjects,
        required this.clients,
        required this.about,
        required this.portfolio,
    });

    factory UserModel.fromRawJson(String str) => UserModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        country: json["country"],
        yearsExperience: json["yearsExperience"],
        allProjects: json["allProjects"],
        clients: json["clients"],
        about: json["about"],
        portfolio: List<String>.from(json["portfolio"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "country": country,
        "yearsExperience": yearsExperience,
        "allProjects": allProjects,
        "clients": clients,
        "about": about,
        "portfolio": List<dynamic>.from(portfolio.map((x) => x)),
    };
}
