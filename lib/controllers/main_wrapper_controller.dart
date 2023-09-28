import 'package:flutter/material.dart';
import 'package:fortuneteller/Pages/AboutUsScreen.dart';
import 'package:fortuneteller/Pages/FortuneScreen.dart';
import 'package:fortuneteller/Pages/HomeScreen.dart';
import 'package:get/get.dart';


class MainWrapperController extends GetxController {
  late PageController pageController;

  RxInt currentPage = 0.obs;
  RxBool isDarkTheme = false.obs;

  List<Widget> pages = [
    const HomeScreen(),
    const FortuneSelectionScreen(),
    const AboutUsScreen(),
  ];

  ThemeMode get theme => Get.isDarkMode ? ThemeMode.dark : ThemeMode.light;

  void switchTheme(ThemeMode mode) {
    Get.changeThemeMode(mode);
  }


  void changePage(int index){
    currentPage.value = index;
    
  }

  void goToTab(int page) {
    currentPage.value = page;
    pageController.jumpToPage(page);
  }
  void animateToTab(int page) {
    currentPage.value = page;
   pageController.animateToPage(page,
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease);
  }

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    super.onInit();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}