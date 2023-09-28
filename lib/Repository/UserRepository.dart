import 'dart:convert';
import 'dart:js_util';
import 'package:fortuneteller/Interfaces/Repository/IUserRepository.dart';
import 'package:fortuneteller/Models/LoginDetail.dart';
import 'package:fortuneteller/Models/User.dart';
import 'package:fortuneteller/Models/UserToken.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class UserRepository implements IUserRepository {

  @override
  Future<UserToken> loginUser(LoginDetail loginDetail) async {
     try {      
      var data = json.encode(loginDetail.toJson());      
      var response = await http.post(
          Uri.parse(
              'https://localhost:7003/api/Users/authenticate'),
          headers: {'Content-Type': 'application/json'},
          body: data);
           UserToken model = new UserToken(accessToken: "", refreshToken: "");
       if (response.statusCode == 200) {
        model = UserToken.fromRawJson(response.body.toString());
      } else if (response.statusCode == 400) {}
      return model;
    } catch (e) {
      Error();
      return new UserToken(accessToken: "", refreshToken: "");
    }
  }

  @override
    Future<UserToken> refreshToken(UserToken userToken) async {
    try {
      UserToken model = new UserToken(accessToken: "", refreshToken: "");
      var response = await http.get(Uri.parse(
          'https://localhost:7003/api/Users/refresh'));
      if (response.statusCode == 200) {
        model = UserToken.fromRawJson(response.body.toString());
      } else if (response.statusCode == 400) {}
      return model;
    } catch (e) {
      Error();
      return new UserToken(accessToken: "", refreshToken: "");
    }
  }

  @override
  Future<UserToken> registerUser(User user) async {
    try {      
      var data = user.toJson();      
      var response = await http.post(
          Uri.parse(
              'http://localhost:5067/api/WorkCenter/TransferSpecCodeList'),
          headers: {'Content-Type': 'application/json'},
          body: data);
           UserToken model = new UserToken(accessToken: "", refreshToken: "");
       if (response.statusCode == 200) {
        model = UserToken.fromRawJson(response.body.toString());
      } else if (response.statusCode == 400) {}
      return model;
    } catch (e) {
      Error();
      return new UserToken(accessToken: "", refreshToken: "");
    }
  }  
}
