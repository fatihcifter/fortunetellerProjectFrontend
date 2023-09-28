import 'package:flutter/material.dart';
import 'package:fortuneteller/res/constants.dart';
import 'package:fortuneteller/widgets/NavDrawer.dart';
import 'package:fortuneteller/Pages/NavigationScreen.dart';
import 'package:get/get.dart';

import 'FortuneScreen.dart';

RxInt _selectedIndex = 0.obs;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        drawer: NavDrawer(),
       appBar: AppBar(backgroundColor: context.theme.scaffoldBackgroundColor),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  "Günün Yorumu",
                  style: TextStyle(
                      fontSize: 28.0,
                      color: primaryColor,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const Expanded(
                  flex: 3,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: EdgeInsets.only(right: 50, left: 50),
                      child: Text(
                        '   This is a long piece of text that will be scrollable. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                        style: TextStyle(fontSize: 16, color: primaryColor),
                      ),
                    ),
                  )),
            ],
          ),
        ),
       );
  }
}
