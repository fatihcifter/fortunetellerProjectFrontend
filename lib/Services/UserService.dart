import 'dart:convert';
import 'dart:js_util';
import 'package:fortuneteller/Interfaces/Repository/IUserRepository.dart';
import 'package:fortuneteller/Models/LoginDetail.dart';
import 'package:fortuneteller/Models/User.dart';
import 'package:fortuneteller/Models/UserToken.dart';
import 'package:fortuneteller/Repository/UserRepository.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Interfaces/Service/IUserService.dart';

class UserService implements IUserService {
  final IUserRepository _userRepository = UserRepository();  

  @override
  Future<UserToken> loginUser(LoginDetail loginDetail) async {
    try {
    UserToken  model = await _userRepository.loginUser(loginDetail);
      return model;
    } catch (e) {
      Error();
      return new UserToken(accessToken: "",refreshToken: "");
    }
  }

  @override
  Future<UserToken> refreshToken(UserToken userToken) async {
    try {
     UserToken  model =  await _userRepository.refreshToken(userToken);
      return model;
    } catch (e) {
      Error();
      return new UserToken(accessToken: "",refreshToken: "");
    }
  }

  @override
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

