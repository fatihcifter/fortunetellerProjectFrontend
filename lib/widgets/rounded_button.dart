import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fortuneteller/res/constants.dart';
import 'package:fortuneteller/view%20model/responsive.dart';

class RoundedButtonWithText extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final String assetpath;

  const RoundedButtonWithText(
      {super.key,
      required this.onTap,
      required this.text,
      required this.assetpath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.isMobile(context) ? 170 : 250,
      width: Responsive.isMobile(context) ? 120 : 200,
      child: Column(
        children: [
          SizedBox(
            height: Responsive.isMobile(context) ? 120 : 200,
            width: Responsive.isMobile(context) ? 120 : 200,
            child: ElevatedButton(
              onPressed: onTap,
              child: Image.asset(
                Responsive.isMobile(context)
                    ? assetpath.replaceAll("100", "64")
                    : assetpath,
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: primaryColor,
                side: BorderSide(color: Colors.deepPurple, width: 5),
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
      ),
    );
  }
}
