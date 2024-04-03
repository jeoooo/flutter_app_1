// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, library_private_types_in_public_api, use_super_parameters, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_icons/simple_icons.dart';

import 'widgets/third_party_auth_login_button.dart';

class AuthLogin extends StatefulWidget {
  const AuthLogin({Key? key}) : super(key: key);

  @override
  _AuthLoginState createState() => _AuthLoginState();
}

class _AuthLoginState extends State<AuthLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CupertinoNavigationBar(
        middle: SvgPicture.asset(
          'assets/twitter_logo.svg',
          height: 24,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, right: 12.0, bottom: 100.0, top: 125.0),
                    child: Text(
                      'See what\'s \nhappening in the\nworld right now.',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  ThirdPartyAuthLoginButton(
                    simpleIcons: SimpleIcons.google,
                    simpleIconsColors: SimpleIconColors.google,
                    buttonText: 'Continue with Google',
                  ),
                  SizedBox(height: 8.0),
                  ThirdPartyAuthLoginButton(
                    simpleIcons: SimpleIcons.apple,
                    simpleIconsColors: SimpleIconColors.apple,
                    buttonText: 'Continue with Apple',
                  ),
                  OrDivider(),
                  SizedBox(
                    width: 300,
                    height: 40,
                    child: CupertinoButton(
                      onPressed: () {
                        // Add your button's onPressed logic here
                      },
                      color: Color(0xFF1DA1F2),
                      borderRadius: BorderRadius.circular(60),
                      padding: EdgeInsets.zero,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 8.0),
                          Text('Create account'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 26.0, right: 26.0, top: 20.0),
                    child: AuthTermsAndConditions(),
                  ),
                  SizedBox(height: 24.0),
                  Login(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Login extends StatelessWidget {
  const Login({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Have an account already? ',
        style: TextStyle(
          color: CupertinoColors.black,
          fontSize: 16,
        ),
        children: [
          TextSpan(
            text: 'Login',
            style: TextStyle(
              color: CupertinoColors.activeBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class AuthTermsAndConditions extends StatelessWidget {
  const AuthTermsAndConditions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'By signing up, you agree to the ',
        style: TextStyle(
          color: CupertinoColors.black,
          fontSize: 16,
        ),
        children: [
          TextSpan(
            text: 'Terms of Service',
            style: TextStyle(
              color: CupertinoColors.activeBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: ' and ',
            style: TextStyle(
              color: CupertinoColors.black,
              fontSize: 16,
            ),
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyle(
              color: CupertinoColors.activeBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: ' including ',
            style: TextStyle(
              color: CupertinoColors.black,
              fontSize: 16,
            ),
          ),
          TextSpan(
            text: 'Cookie Use',
            style: TextStyle(
              color: CupertinoColors.activeBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class OrDivider extends StatelessWidget {
  const OrDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Flexible(child: Divider()),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Text("Or"),
          ),
          Flexible(child: Divider()),
        ],
      ),
    );
  }
}
