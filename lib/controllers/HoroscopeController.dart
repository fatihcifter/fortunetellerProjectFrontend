import 'dart:convert';
import 'dart:js_util';
import 'package:fortuneteller/Interfaces/Service/IHoroscopeService.dart';
import 'package:fortuneteller/Interfaces/Service/IUserService.dart';
import 'package:fortuneteller/Models/Enums/HoroscopeSign.dart';
import 'package:fortuneteller/Models/HoroscopeInfo.dart';
import 'package:fortuneteller/Services/HoroscopeService.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HoroscopeController extends GetxController {
  static HoroscopeController get to => Get.find();
  final IHoroscopeService _horoscopeService = HoroscopeService();  
  final RxBool isEditable = true.obs;
    final RxBool isNotNew = true.obs;
  late Map<TextEditingController, String> abctest;

  Future<Iterable<HoroscopeInfo>> getHoroscopeInfo(HoroscopeSign horoscopeSign) async {
    try {
    Iterable<HoroscopeInfo>  model = await _horoscopeService.getHoroscopeInfo(horoscopeSign);
      return model;
    } catch (e) {
      Error();
      return  <HoroscopeInfo>[];
    }
  }

}
