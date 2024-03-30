// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, library_private_types_in_public_api, use_super_parameters, prefer_const_literals_to_create_immutables, unused_import, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_icons/simple_icons.dart';

import 'widgets/third_party_auth_login_button.dart';
import 'widgets/twitter_navbar.dart';

class TwitterDashboard extends StatefulWidget {
  const TwitterDashboard({Key? key}) : super(key: key);

  @override
  _TwitterDashboardState createState() => _TwitterDashboardState();
}

class _TwitterDashboardState extends State<TwitterDashboard> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      navigationBar: TwitterNavbar(),
      child: SafeArea(
        child: Column(
          children: [
            Tweet(),
          ],
        ),
      ),
    );
  }
}

class Tweet extends StatelessWidget {
  const Tweet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey, // Replace with desired color
            width: 1, // Adjust the width as needed
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            left: 8.0, right: 8.0, top: 16.0, bottom: 16.0),
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 32,
              ),
              SizedBox(width: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Juan Dela Cruz',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: ' ',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        TextSpan(
                          text: '@username',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        TextSpan(
                          text: ' • ',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        TextSpan(
                          text: '12h',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Container(
                      width: 300,
                      child: Text(
                          'datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata'),
                    ),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/comment_icon.svg',
                            height: 20,
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            '123',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(width: 32.0),
                          SvgPicture.asset(
                            'assets/retweet_icon.svg',
                            height: 16,
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            '123',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(width: 32.0),
                          SvgPicture.asset(
                            'assets/heart_icon.svg',
                            height: 16,
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            '123',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(width: 32.0),
                          SvgPicture.asset(
                            'assets/share_icon.svg',
                            height: 16,
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            '123',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
