import 'package:flutter/material.dart';
import 'package:fortuneteller/Pages/AboutUsScreen.dart';
import 'package:fortuneteller/Pages/LoginScreen.dart';
import 'package:get/get.dart';
import '../../../res/constants.dart';
import '../view model/controller.dart';
import '../view model/responsive.dart';
import 'NavDrawer.dart';
import 'navigation_button.dart';
class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [                  
           NavigationTextButton(onTap: () {Get.to(LoginScreen());}, text: 'Giriş Yap'),
            NavigationTextButton(onTap: () {}, text: 'Hakkımızda'),
            NavigationTextButton(onTap: () {controller.animateToPage(2, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);}, text: 'Falcılar'),
            NavigationTextButton(onTap: () {Get.to(AboutUsScreen());}, text: 'İletişim'),
            
        ],
      ),
    );
  }
}
