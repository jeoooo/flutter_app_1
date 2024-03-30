// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, use_super_parameters, unnecessary_import, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_1/screens/widgets/tweet.dart';
import 'package:flutter_app_1/screens/widgets/twitter_navbar.dart';

class NewsFeed extends StatelessWidget {
  const NewsFeed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context) => CupertinoPageScaffold(
        navigationBar: TwitterNavbar(type: TwitterNavbarType.profile),
        backgroundColor: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              Tweet(),
            ],
          ),
        ),
      ),
    );
  }
}
