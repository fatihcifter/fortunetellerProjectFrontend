
import 'package:flutter/material.dart';
import 'package:fortuneteller/res/constants.dart';
import 'package:fortuneteller/view%20model/responsive.dart';

class HoroscopeButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final String assetpath;

  const HoroscopeButton(
      {super.key,
      required this.onTap,
      required this.text,
      required this.assetpath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          customBorder: const CircleBorder(),
          onTap: onTap, // Image tapped
          splashColor: Colors.white10, // Splash color over image
          child: Ink.image(            
            fit: BoxFit.cover, // Fixes border issues
            width: Responsive.convertHoroscope(context),
            height: Responsive.convertHoroscope(context),
            image: AssetImage(              
              assetpath,
            ),
          ),
        ),
                Text(
          
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: primaryColor, fontSize: Responsive.convertText(context)),
          )
      ],
    );
  }
}
