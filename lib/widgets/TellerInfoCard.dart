

import 'package:flutter/material.dart';
import 'package:fortuneteller/Models/Enums/FortuneType.dart';
import 'package:fortuneteller/Models/TellerInfos.dart';
import 'package:fortuneteller/view%20model/Base64Converter.dart';



class TellerInfoCard extends StatelessWidget {
   TellerInfoCard({
    Key? key,
    required this.tellerInfo,
    required this.fortuneType 
  }) : super(key: key);
  TellerInfo tellerInfo;
  FortuneType fortuneType;
  int getPrice(FortuneType fortuneType){
switch (fortuneType.index) {
  case 1:
    return tellerInfo.coffeePrice;
  case 2:
    return tellerInfo.tarotPrice;
   case 3:
    return tellerInfo.waterPrice;      
    case 4:
    return tellerInfo.birthmapPrice;  
    case 5:
    return tellerInfo.playingCardPrice;  
  default:
  return 0;
}

  }
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left : 12.0,right:  12 ,top: 6 ,bottom:  6),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
             // onItemClick('Custom Card');
            },
            borderRadius: BorderRadius.circular(12.0),
            splashColor: Colors.purpleAccent.withOpacity(0.5),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: CircleAvatar(
                        backgroundImage: Base64Converter().memoryImageFromBase64String(tellerInfo.base64Image),
                        radius: 35,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(tellerInfo.userName ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,)),
                            ),
                            Container(
                              child:
                                  Text(tellerInfo.description,style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(child: Text( "${getPrice(fortuneType)} ₺",style: const TextStyle(color: Colors.white))),
                      ),
                    ),
                  ],
                ),
                      ],
                    ),
                  ),
                  const Icon(Icons.chevron_right),
                ],
              ),
            ),
          ),
        ),
      );
  }
}