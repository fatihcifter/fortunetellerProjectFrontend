import 'package:flutter/material.dart';
import 'package:fortuneteller/res/constants.dart';
import 'package:fortuneteller/view%20model/responsive.dart';
import 'package:fortuneteller/widgets/HoroscopeButton.dart';
import 'package:fortuneteller/widgets/NavDrawer.dart';
import 'package:fortuneteller/Pages/NavigationScreen.dart';
import 'package:fortuneteller/widgets/rounded_button.dart';
import 'package:get/get.dart';

class HoroscopeSignsScreen extends StatelessWidget {
  const HoroscopeSignsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(backgroundColor: context.theme.scaffoldBackgroundColor),
      body: Column(
        children: [
          Container(
            color: context.theme.scaffoldBackgroundColor,
            height: 50,
            width: context.mediaQuerySize.width,
            child: Text(
              "Burcunu Seç",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Responsive.convertTextHeader(context),
                color: primaryColor,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10,right: 10),
                  child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.spaceAround,
                    spacing: 5,   
                    runSpacing: 10,                 
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/aries.png",
                        onTap: () {},
                        text: "Koç",
                      ),
                      HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/cancer.png",
                        onTap: () {},
                        text: "Yengeç",
                      ),
                      HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/capricorn.png",
                        onTap: () {},
                        text: "Oğlak",
                      ),
                      HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/scorpio.png",
                        onTap: () {},
                        text: "Akrep",
                      ),
                      HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/libra.png",
                        onTap: () {},
                        text: "Terazi",
                      ),
                      HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/leo.png",
                        onTap: () {},
                        text: "Aslan",
                      ),
                      HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/gemini.png",
                        onTap: () {},
                        text: "İkizler",
                      ),
                      HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/aquarius.png",
                        onTap: () {},
                        text: "Kova",
                      ),                      
                      HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/pisces.png",
                        onTap: () {},
                        text: "Balık",
                      ),
                      HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/taurus.png",
                        onTap: () {},
                        text: "Boğa",
                      ),
                      HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/virgo.png",
                        onTap: () {},
                        text: "Başak",
                      ),    HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/sagittarius.png",
                        onTap: () {},
                        text: "Yay",
                      ),                     
                      
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
