import 'package:fortuneteller/Interfaces/Service/IFortuneTellerService.dart';
import 'package:fortuneteller/Models/Enums/FortuneType.dart';
import 'package:fortuneteller/Models/TellerInfos.dart';
import 'package:fortuneteller/Services/FortuneTellerService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FortuneController extends GetxController {
  static FortuneController get to => Get.find();
  final IFortuneTellerService _fortuneTellerService = FortuneTellerService();  
  final RxBool isEditable = true.obs;
    final RxBool isNotNew = true.obs;
  late Map<TextEditingController, String> abctest;

  Future<Iterable<TellerInfo>> getFortuneTellerInfos(FortuneType horoscopeSign) async {
    try {
    Iterable<TellerInfo>  model = await _fortuneTellerService.getFortuneTellerInfos(horoscopeSign);
      return model;
    } catch (e) {
      Error();
      return  <TellerInfo>[];
    }
  }

}
