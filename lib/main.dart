import 'package:flutter/material.dart';
import 'package:fortuneteller/Pages/HomeScreen.dart';
import 'package:fortuneteller/Pages/WelcomeScreen.dart';
import 'package:fortuneteller/controllers/loginController.dart';
import 'package:fortuneteller/res/constants.dart';
import 'package:get/get.dart';

import 'Pages/NavigationScreen.dart';

void main() {
  Get.put(LoginController());
    runApp(GetMaterialApp(home: NavigationScreen(),theme:  ThemeData(scaffoldBackgroundColor: bgColor),));
}

