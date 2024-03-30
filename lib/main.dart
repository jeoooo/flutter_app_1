// ignore_for_file: library_private_types_in_public_api, use_super_parameters, prefer_const_constructors, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter_app_1/screens/twitter_dashboard_screen.dart';

import 'package:flutter_app_1/screens/auth_login_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
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
