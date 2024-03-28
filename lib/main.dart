// ignore_for_file: library_private_types_in_public_api, use_super_parameters, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter_app_1/screens/twitter_dashboard_screen.dart';

import 'package:flutter_app_1/screens/auth_login_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      initialRoute: '/dashboard',
      routes: {
        '/': (context) => AuthLogin(),
        '/dashboard': (context) => TwitterDashboard(),
      },
    );
  }
}
