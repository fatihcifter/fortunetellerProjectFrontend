import 'package:flutter/material.dart';
import 'package:fortuneteller/Pages/WelcomeScreen.dart';
import 'package:get/get.dart';

class NavDrawer extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
             child: Image.asset(
                        "assets/images/TREXALT.png",
                      ),
            ),
          ),       
        
          ListTile(
            leading: const Icon(Icons.remove_red_eye),
            title: const Text('Fal Baktır'),
            onTap: () => {Get.to(WelcomeScreen())},
          ),
          ListTile(
            leading: const Icon(Icons.calculate),
            title: const Text('Günlük Yorumlar'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.bolt_outlined),
            title: const Text('Bakılan Fallar'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.account_circle_rounded),
            title: const Text('Hesabım'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.mail),
            title: const Text('İletiler'),
            onTap: () => {Navigator.of(context).pop()},
          )         
        ],
      ),
    );
  }
}
