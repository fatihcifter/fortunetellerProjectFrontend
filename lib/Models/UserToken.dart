import 'dart:convert';

class UserToken {
    String accessToken;
    String refreshToken;

    UserToken({
        required this.accessToken,
        required this.refreshToken,
    });

    factory UserToken.fromRawJson(String str) => UserToken.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory UserToken.fromJson(Map<String, dynamic> json) => UserToken(
        accessToken: json["access_Token"],
        refreshToken: json["refresh_Token"],
    );

    Map<String, dynamic> toJson() => {
        "access_Token": accessToken,
        "refresh_Token": refreshToken,
    };
}
