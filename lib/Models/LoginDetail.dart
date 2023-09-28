import 'dart:convert';

class LoginDetail {
    String userName;
    String password;

    LoginDetail({
        required this.userName,
        required this.password,
    });

    factory LoginDetail.fromRawJson(String str) => LoginDetail.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory LoginDetail.fromJson(Map<String, dynamic> json) => LoginDetail(
        userName: json["userName"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "userName": userName,
        "password": password,
    };
}
