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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Tweet(),
            ),
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
            width: 2, // Adjust the width as needed
          ),
        ),
      ),
      child: Row(
        children: [
          // avatar + thread
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue, // Replace with desired color
                    radius: 32, // Adjust the size as needed
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Juan Dela Cruz @username 12h'),
                      Text('tweet'),
                    ],
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 24.0, top: 8.0, bottom: 8.0),
                child: Container(
                  height: 30, // Adjust the height as needed
                  child: VerticalDivider(
                    color: Colors.black, // Replace with desired color
                    thickness: 1, // Adjust the thickness as needed
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor:
                          Colors.blue, // Replace with desired color
                      radius: 32 / 1.5, // Adjust the size as needed
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
