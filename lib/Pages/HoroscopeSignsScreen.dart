import 'package:flutter/material.dart';
import 'package:fortuneteller/Models/Enums/HoroscopeSign.dart';
import 'package:fortuneteller/Models/HoroscopeInfo.dart';
import 'package:fortuneteller/Pages/HoroscopeInfoScreen.dart';
import 'package:fortuneteller/controllers/HoroscopeController.dart';
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
                  padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.spaceAround,
                    spacing: 5,
                    runSpacing: 10,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/aries.png",
                        onTap: () async {
                          Get.to(HoroscopeInfoScreen(
                              horoscopeSign: HoroscopeSign.Aries));
                        },
                        text: "Koç",
                      ),
                      HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/taurus.png",
                        onTap: () {
                          Get.to(HoroscopeInfoScreen(
                              horoscopeSign: HoroscopeSign.Taurus));
                        },
                        text: "Boğa",
                      ),
                      HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/gemini.png",
                        onTap: () {
                          Get.to(HoroscopeInfoScreen(
                              horoscopeSign: HoroscopeSign.Gemini));
                        },
                        text: "İkizler",
                      ),
                      HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/cancer.png",
                        onTap: () {
                          Get.to(HoroscopeInfoScreen(
                              horoscopeSign: HoroscopeSign.Cancer));
                        },
                        text: "Yengeç",
                      ),
                      HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/leo.png",
                        onTap: () {
                          Get.to(HoroscopeInfoScreen(
                              horoscopeSign: HoroscopeSign.Leo));
                        },
                        text: "Aslan",
                      ),
                      HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/virgo.png",
                        onTap: () {
                          Get.to(HoroscopeInfoScreen(
                              horoscopeSign: HoroscopeSign.Virgo));
                        },
                        text: "Başak",
                      ),
                      HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/libra.png",
                        onTap: () {
                          Get.to(HoroscopeInfoScreen(
                              horoscopeSign: HoroscopeSign.Libra));
                        },
                        text: "Terazi",
                      ),
                      HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/scorpio.png",
                        onTap: () {
                          Get.to(HoroscopeInfoScreen(
                              horoscopeSign: HoroscopeSign.Scorpio));
                        },
                        text: "Akrep",
                      ),
                      HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/sagittarius.png",
                        onTap: () {
                          Get.to(HoroscopeInfoScreen(
                              horoscopeSign: HoroscopeSign.Sagittarius));
                        },
                        text: "Yay",
                      ),
                      HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/capricorn.png",
                        onTap: () {
                          Get.to(HoroscopeInfoScreen(
                              horoscopeSign: HoroscopeSign.Capricorn));
                        },
                        text: "Oğlak",
                      ),
                      HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/aquarius.png",
                        onTap: () {
                          Get.to(HoroscopeInfoScreen(
                              horoscopeSign: HoroscopeSign.Aquarius));
                        },
                        text: "Kova",
                      ),
                      HoroscopeButton(
                        assetpath: "assets/horoscopeSignsAlter/pisces.png",
                        onTap: () {
                          Get.to(HoroscopeInfoScreen(
                              horoscopeSign: HoroscopeSign.Pisces));
                        },
                        text: "Balık",
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
