import 'package:flutter/material.dart';
import 'package:fortuneteller/res/constants.dart';
import 'package:fortuneteller/view%20model/responsive.dart';
import 'package:fortuneteller/widgets/NavDrawer.dart';
import 'package:fortuneteller/widgets/navigation_bar.dart';
import 'package:get/get.dart';

RxInt _selectedIndex = 0.obs;

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: context.theme.scaffoldBackgroundColor),
      drawer: NavDrawer(),
      body: Container(
        child: Column(
          children: [
            const Expanded(
              flex: 10,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: TopNavigationBar(),
              ),
            ),
            Expanded(
              flex: 100,
              child:  Responsive.isMobile(context)?Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(flex: 1, child: Container()),
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            textAlign: TextAlign.center,
                            "Hakkımızda",
                            style: TextStyle(
                                fontSize: Responsive.convertTextHeader(context),
                                color: primaryColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Expanded(
                            flex: 3,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  '   This is a long piece of text that will be scrollable. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                  style: TextStyle(
                                      fontSize: Responsive.convertText(context),
                                      color: primaryColor),
                                ),
                              ),
                            )),
                      ],
                    ):Row(
                children: [
                  Expanded(
                      flex:70,
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(flex: 1, child: Container()),
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            textAlign: TextAlign.center,
                            "Hakkımızda",
                            style: TextStyle(
                                fontSize: Responsive.convertTextHeader(context),
                                color: primaryColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Expanded(
                            flex: 3,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Padding(
                                padding: EdgeInsets.only(right: 12),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  '   This is a long piece of text that will be scrollable. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                  style: TextStyle(
                                      fontSize: Responsive.convertText(context),
                                      color: primaryColor),
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
            ),SizedBox(height: 70,),
                    Padding(
                padding: const EdgeInsets.only(bottom:12.0),child:  SizedBox(
              height: 35,
     
                child: Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.spaceAround,
                  spacing: 10,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child:
                                Icon(Icons.phone, size: 14, color: primaryColor),
                          ),
                          TextSpan(
                              text: " 0123 456 78 90",
                              style: TextStyle(color: primaryColor)),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child:
                                Icon(Icons.mail, size: 14, color: primaryColor),
                          ),
                          TextSpan(
                              text: "info@fortune.com",
                              style: TextStyle(color: primaryColor)),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(Icons.navigation,
                                size: 14, color: primaryColor),
                          ),
                          TextSpan(
                              text: "Adres bilgileri burada yazabilir hehe",
                              style: TextStyle(color: primaryColor)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
