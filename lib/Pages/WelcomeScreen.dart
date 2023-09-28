import 'package:flutter/material.dart';
import 'package:fortuneteller/res/constants.dart';
import 'package:fortuneteller/view%20model/responsive.dart';
import 'package:fortuneteller/widgets/NavDrawer.dart';
import 'package:fortuneteller/widgets/navigation_bar.dart';
import 'package:get/get.dart';

RxInt _selectedIndex = 0.obs;

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      body: Container(
        child: Column(
          children: [
            const Expanded(
              flex: 10,
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: TopNavigationBar(),
              ),
            ),
            Expanded(
              flex: 90,
              child: Row(
                children: [
                  Expanded(
                      flex: 70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              flex: 90,
                              child: Image.asset(
                                'assets/images/fortune.png',
                              )),
                        ],
                      )),
                  Expanded(
                    flex: 30,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  <Widget>[
                        Expanded(flex:1 ,child: Container()),
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            "Some Heading Text",
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
                                padding: EdgeInsets.only(right: 12),
                                child: Text(
                                  '   This is a long piece of text that will be scrollable. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                  style: TextStyle(
                                      fontSize: 16, color: primaryColor),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Container(),
                  )
                ],
              ),
            ),
         
         Expanded(
                                flex: 20,
                                child: Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.spaceAround,
              spacing: 10,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                                    FloatingActionButton.extended(
                                      label: Text('Download Android'), // <-- Text
                                      backgroundColor: Colors.black,
                                      icon: Icon(
                                        // <-- Icon
                                        Icons.android,
                                        size: 24.0,
                                      ),
                                      onPressed: () {},
                                    ),
                                    FloatingActionButton.extended(
                                      label: Text('Download IOS'), // <-- Text
                                      backgroundColor: Colors.black,
                                      icon: Icon(
                                        // <-- Icon
                                        Icons.apple,
                                        size: 24.0,
                                      ),
                                      onPressed: () {},
                                    ),
                                    FloatingActionButton.extended(
                                      label: Text('Download Apk'), // <-- Text
                                      backgroundColor: Colors.black,
                                      icon: Icon(
                                        // <-- Icon
                                        Icons.file_copy,
                                        size: 24.0,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
         
          ],
        ),
      ),
    );
  }
}
