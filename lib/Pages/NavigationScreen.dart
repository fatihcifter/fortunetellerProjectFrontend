import 'package:flutter/material.dart';
import 'package:fortuneteller/Pages/AboutUsScreen.dart';
import 'package:fortuneteller/Pages/FortuneScreen.dart';
import 'package:fortuneteller/Pages/HomeScreen.dart';
import 'package:fortuneteller/Pages/HoroscopeSignsScreen.dart';
import 'package:get/get.dart';

import '../controllers/main_wrapper_controller.dart';
class NavigationScreen extends StatelessWidget {
   NavigationScreen({
    Key? key,
  }) : super(key: key);
 final MainWrapperController _mainWrapperController =
      Get.put(MainWrapperController());

      final screen=[
        HomeScreen(),
        HoroscopeSignsScreen(),
        FortuneSelectionScreen(),
        AboutUsScreen()
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(    
    body:Obx(() =>IndexedStack(index: _mainWrapperController.currentPage.value,children: screen),),
     bottomNavigationBar: Obx(() =>BottomNavigationBar(            
type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      backgroundColor: Color.fromARGB(255, 255, 235, 122),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Anasayfa',
        ), BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Burçlar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.remove_red_eye),
          label: 'Fal Baktır',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Fallar',
        ),
      ],
      currentIndex: _mainWrapperController.currentPage.value, //New
      onTap: (value) => {_mainWrapperController.currentPage.value = value,
      },
    )
  ));}
}