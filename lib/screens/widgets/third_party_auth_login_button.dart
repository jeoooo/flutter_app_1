// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, library_private_types_in_public_api, use_super_parameters, prefer_const_literals_to_create_immutables, must_be_immutable, unused_import

import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

class ThirdPartyAuthLoginButton extends StatelessWidget {
  String? buttonText;
  IconData? simpleIcons;
  Color? simpleIconsColors;

  ThirdPartyAuthLoginButton(
      {super.key, this.buttonText, this.simpleIcons, this.simpleIconsColors});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 48,
      child: ElevatedButton(
        onPressed: () {
          // Add your button's onPressed logic here
        },
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.white, // Customize the button color here
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(60), // Customize the button radius here
            side: BorderSide(
              color: Colors.black, // Customize the border color here
              width: 0.5, // Customize the border width here
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(simpleIcons!, color: simpleIconsColors),
            SizedBox(width: 8.0),
            Text(
              buttonText!,
              style: TextStyle(
                color: Colors.black,
                // fontWeight: FontWeight.bold, // Adjust the font weight here
                fontSize: 16, // Adjust the font size here
              ),
            )
          ],
        ), // Customize the button contents here
      ),
    );
  }
}
