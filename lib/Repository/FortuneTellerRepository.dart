import 'dart:convert';
import 'dart:js_util';
import 'package:fortuneteller/Interfaces/Repository/IFortuneTellerRepository.dart';
import 'package:fortuneteller/Interfaces/Repository/IHoroscopeRepository.dart';
import 'package:fortuneteller/Interfaces/Repository/IUserRepository.dart';
import 'package:fortuneteller/Models/Enums/FortuneType.dart';
import 'package:fortuneteller/Models/Enums/HoroscopeSign.dart';
import 'package:fortuneteller/Models/HoroscopeInfo.dart';
import 'package:fortuneteller/Models/LoginDetail.dart';
import 'package:fortuneteller/Models/TellerInfos.dart';
import 'package:fortuneteller/Models/User.dart';
import 'package:fortuneteller/Models/UserToken.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FortuneTellerRepository implements IFortuneTellerRepository {
  @override
  Future<Iterable<TellerInfo>> getFortuneTellerInfos(FortuneType fortuneType) async {
    try {
      Iterable<TellerInfo> model = <TellerInfo>[];
      var response =
          await http.get(Uri.parse('https://localhost:7003/GetFortuneTellersByFortuneType?fortuneType='+ fortuneType.index.toString()));

      if (response.statusCode == 200) {
      model = tellerInfoFromJson(response.body.toString());     
      } else if (response.statusCode == 400) {}
      
      return model;
    } catch (e) {
      Error();
      return <TellerInfo>[];
      ;
    }
  }
}
