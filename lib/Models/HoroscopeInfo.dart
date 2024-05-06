import 'dart:convert';

List<HoroscopeInfo> horoscopeInfoFromJson(String str) => List<HoroscopeInfo>.from(json.decode(str).map((x) => HoroscopeInfo.fromJson(x)));

String horoscopeInfoToJson(List<HoroscopeInfo> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HoroscopeInfo {
    int? messageId;
    String? messageBody;
    String? messageHeader;
    DateTime? estimatedPublishTime;
    int? horoscopeSign;
    String? author;

    HoroscopeInfo({
        this.messageId,
        this.messageBody,
        this.messageHeader,
        this.estimatedPublishTime,
        this.horoscopeSign,
        this.author,
    });

    factory HoroscopeInfo.fromRawJson(String str) => HoroscopeInfo.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory HoroscopeInfo.fromJson(Map<String, dynamic> json) => HoroscopeInfo(
        messageId: json["messageId"],
        messageBody: json["messageBody"],
        messageHeader: json["messageHeader"],
        estimatedPublishTime: json["estimatedPublishTime"] == null ? null : DateTime.parse(json["estimatedPublishTime"]),
        horoscopeSign: json["horoscopeSign"],
        author: json["author"],
    );

    Map<String, dynamic> toJson() => {
        "messageId": messageId,
        "messageBody": messageBody,
        "messageHeader": messageHeader,
        "estimatedPublishTime": estimatedPublishTime?.toIso8601String(),
        "horoscopeSign": horoscopeSign,
        "author": author,
    };
}
