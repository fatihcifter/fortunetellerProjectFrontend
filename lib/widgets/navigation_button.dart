import 'package:flutter/material.dart';
import 'package:fortuneteller/res/constants.dart';
import 'package:fortuneteller/view%20model/responsive.dart';

class NavigationTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const NavigationTextButton(
      {super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(        
          onPressed: onTap,
          child: Text(          
            text,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(fontWeight: FontWeight.bold, color: primaryColor ,fontSize: Responsive.convertText(context)),
          )),
    );
  }
}
