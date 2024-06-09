// ignore_for_file: use_super_parameters, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/twitter_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NavbarType navbarType = NavbarType.NOTIFICATIONS;
    return MaterialApp(
      title: 'Hello, World!',
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(
              navbarType == NavbarType.NOTIFICATIONS ? 100 : kToolbarHeight),
          child: TwitterNavbar(navbarType: navbarType),
        ),
        body: const Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}
