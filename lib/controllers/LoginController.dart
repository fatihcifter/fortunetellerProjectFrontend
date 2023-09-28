import 'dart:convert';
import 'dart:js_util';
import 'package:fortuneteller/Interfaces/Service/IUserService.dart';
import 'package:fortuneteller/Models/LoginDetail.dart';
import 'package:fortuneteller/Models/User.dart';
import 'package:fortuneteller/Models/UserToken.dart';
import 'package:fortuneteller/Services/UserService.dart';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get to => Get.find();
  final IUserService _userRepository = UserService();  
  final RxBool isEditable = true.obs;
    final RxBool isNotNew = true.obs;
   TextEditingController UserNameTxtController = TextEditingController();
  TextEditingController PasswordTxtController = TextEditingController();
  late Map<TextEditingController, String> abctest;

  Future<UserToken> loginUser(LoginDetail loginDetail) async {
    try {
    UserToken  model = await _userRepository.loginUser(loginDetail);
      return model;
    } catch (e) {
      Error();
      return new UserToken(accessToken: "",refreshToken: "");
    }
  }

  Future<UserToken> refreshToken(UserToken userToken) async {
    try {
     UserToken  model =  await _userRepository.refreshToken(userToken);
      return model;
    } catch (e) {
      Error();
      return new UserToken(accessToken: "",refreshToken: "");
    }
  }

  Future<UserToken> registerUser(User user) async {
    try {
      UserToken  model =  await _userRepository.registerUser(user);
      return model;
    } catch (e) {
      Error();
      return new UserToken(accessToken: "",refreshToken: "");
    }
  }
}
