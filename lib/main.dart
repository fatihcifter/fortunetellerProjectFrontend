import 'package:flutter/material.dart';
import 'package:fortuneteller/Pages/HomeScreen.dart';
import 'package:fortuneteller/Pages/WelcomeScreen.dart';
import 'package:fortuneteller/controllers/FortuneController.dart';
import 'package:fortuneteller/controllers/HoroscopeController.dart';
import 'package:fortuneteller/controllers/loginController.dart';
import 'package:fortuneteller/res/constants.dart';
import 'package:get/get.dart';

import 'Pages/NavigationScreen.dart';

void main() {
  Get.put(LoginController());  
  Get.put(HoroscopeController());
  Get.put(FortuneController());
    runApp(GetMaterialApp(
    home: NavigationScreen(),
    theme: ThemeData(
      scaffoldBackgroundColor: bgColor,
      backgroundColor: bgColor,
      textTheme: const TextTheme(
          bodyText1: TextStyle(color: primaryColor),
          headline1: TextStyle(color: primaryColor, fontSize: 16),
          headlineLarge: TextStyle(color: primaryColor, fontSize: 30)),
    ),
  ));
}
