import 'package:flutter/material.dart';
import 'package:fortuneteller/res/constants.dart';
import 'package:fortuneteller/widgets/NavDrawer.dart';
import 'package:fortuneteller/Pages/NavigationScreen.dart';
import 'package:fortuneteller/widgets/rounded_button.dart';
import 'package:get/get.dart';



class FortuneSelectionScreen extends StatelessWidget {
  const FortuneSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(backgroundColor: context.theme.scaffoldBackgroundColor),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.spaceAround,
              spacing: 10,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                RoundedButtonWithText(
                  text: "Kahve Falı",
                  assetpath: "assets/images/tea-cup-100.png",
                  onTap: () {},
                ),
                RoundedButtonWithText(
                  text: "Tarot Falı",
                  assetpath: "assets/images/tarot-100.png",
                  onTap: () {},
                ),              
                RoundedButtonWithText(
                  text: "Doğum Haritası",
                  assetpath: "assets/images/birth-date-100.png",
                  onTap: () {},
                ),
                RoundedButtonWithText(
                  text: "İskambil Falı",
                  assetpath: "assets/images/playing-cards-100.png",
                  onTap: () {},
                ),
                RoundedButtonWithText(
                  text: "Su Falı",
                  assetpath: "assets/images/water-100.png",
                  onTap: () {},
                ),            
              ],
            ),
          ),
        ),
      ),      
    );
  }
}


