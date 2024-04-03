// ignore_for_file: use_super_parameters, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_1/screens/widgets/tweet.dart';
import 'package:flutter_app_1/screens/widgets/twitter_navbar.dart';

class NewsFeed extends StatelessWidget {
  const NewsFeed({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context) => CupertinoPageScaffold(
        navigationBar: TwitterNavbar(type: TwitterNavbarType.profile),
        backgroundColor: Colors.white,
        child: SafeArea(
          child: SingleChildScrollView(
            // Wrap Column with SingleChildScrollView
            child: Column(
              children: [
                Tweet(),
                // Add more widgets here if needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}
