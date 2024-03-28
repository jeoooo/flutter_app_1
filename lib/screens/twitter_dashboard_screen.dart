// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, library_private_types_in_public_api, use_super_parameters, prefer_const_literals_to_create_immutables, unused_import

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
    return Row(
      children: [
        Column(
          children: [
            Text('dp'),
            Text('dp'),
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                Text('name'),
                Text('@username'),
                Text('time'),
              ],
            ),
            Text('tweet'),
            Row(
              children: [
                Text('tweet'),
                Text('tweet'),
                Text('tweet'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
