import 'dart:convert';

List<TellerInfo> tellerInfoFromJson(String str) => List<TellerInfo>.from(json.decode(str).map((x) => TellerInfo.fromJson(x)));

String tellerInfoToJson(List<TellerInfo> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TellerInfo {
    int id;
    int userId;
    String userName;
    String description;
    String base64Image;
    int rate;
    bool coffee;
    int coffeePrice;
    bool tarot;
    int tarotPrice;
    bool water;
    int waterPrice;
    bool birthmap;
    int birthmapPrice;
    bool playingCard;
    int playingCardPrice;

    TellerInfo({
        required this.id,
        required this.userId,
        required this.userName,
        required this.description,
        required this.base64Image,
        required this.rate,
        required this.coffee,
        required this.coffeePrice,
        required this.tarot,
        required this.tarotPrice,
        required this.water,
        required this.waterPrice,
        required this.birthmap,
        required this.birthmapPrice,
        required this.playingCard,
        required this.playingCardPrice,
    });

    factory TellerInfo.fromRawJson(String str) => TellerInfo.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory TellerInfo.fromJson(Map<String, dynamic> json) => TellerInfo(
        id: json["id"],
        userId: json["userId"],
        userName: json["userName"],
        description: json["description"],
        base64Image: json["base64Image"],
        rate: json["rate"],
        coffee: json["coffee"],
        coffeePrice: json["coffeePrice"],
        tarot: json["tarot"],
        tarotPrice: json["tarotPrice"],
        water: json["water"],
        waterPrice: json["waterPrice"],
        birthmap: json["birthmap"],
        birthmapPrice: json["birthmapPrice"],
        playingCard: json["playingCard"],
        playingCardPrice: json["playingCardPrice"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "userId": userId,
        "userName": userName,
        "description": description,
        "base64Image": base64Image,
        "rate": rate,
        "coffee": coffee,
        "coffeePrice": coffeePrice,
        "tarot": tarot,
        "tarotPrice": tarotPrice,
        "water": water,
        "waterPrice": waterPrice,
        "birthmap": birthmap,
        "birthmapPrice": birthmapPrice,
        "playingCard": playingCard,
        "playingCardPrice": playingCardPrice,
    };
}
