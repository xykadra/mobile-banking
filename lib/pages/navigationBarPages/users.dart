// To parse this JSON data, do
//
//     final users = usersFromJson(jsonString);

import 'dart:convert';

Users usersFromJson(String str) => Users.fromJson(json.decode(str));

String usersToJson(Users data) => json.encode(data.toJson());

class Users {
    String firstName;
    String lastName;
    String email;
    String password;

    Users({
        required this.firstName,
        required this.lastName,
        required this.email,
        required this.password,
    });

    factory Users.fromJson(Map<String, dynamic> json) => Users(
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "first name": firstName,
        "last name": lastName,
        "email": email,
        "password": password,
    };
}
