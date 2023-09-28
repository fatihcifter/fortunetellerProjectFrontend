import 'dart:convert';

class User {
    int? userId;
    String? userName;
    String? email;
    String? password;

    User({
        this.userId,
        this.userName,
        this.email,
        this.password,
    });

    factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["userId"],
        userName: json["userName"],
        email: json["email"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "userName": userName,
        "email": email,
        "password": password,
    };
}
