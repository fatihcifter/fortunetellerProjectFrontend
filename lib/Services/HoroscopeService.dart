import 'dart:convert';
import 'dart:js_util';
import 'package:fortuneteller/Interfaces/Repository/IHoroscopeRepository.dart';
import 'package:fortuneteller/Interfaces/Repository/IUserRepository.dart';
import 'package:fortuneteller/Interfaces/Service/IHoroscopeService.dart';
import 'package:fortuneteller/Models/Enums/HoroscopeSign.dart';
import 'package:fortuneteller/Models/HoroscopeInfo.dart';
import 'package:fortuneteller/Models/LoginDetail.dart';
import 'package:fortuneteller/Models/User.dart';
import 'package:fortuneteller/Models/UserToken.dart';
import 'package:fortuneteller/Repository/HoroscopeRepository.dart';
import 'package:fortuneteller/Repository/UserRepository.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Interfaces/Service/IUserService.dart';

class HoroscopeService implements IHoroscopeService {
  final IHoroscopeRepository _userRepository = HoroscopeRepository();  

  @override
  Future<Iterable<HoroscopeInfo>> getHoroscopeInfo(HoroscopeSign horoscopeInfo) async {
    try {
    Iterable<HoroscopeInfo>  model = await _userRepository.getHoroscopeInfo(horoscopeInfo);
      return model;
    } catch (e) {
      Error();
      return <HoroscopeInfo>[];
    }
  }

}

