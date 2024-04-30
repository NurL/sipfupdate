import 'package:flutter/material.dart';
import 'package:sipfupdate/pages/login_page.dart';
import 'package:sipfupdate/pages/splash_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(
          Duration(seconds: 1),
        ),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return MaterialApp(
              home: SplashPage(),
            );
          } else {
            return MaterialApp(
              home: LoginPage(),
            );
          }
        });
  }
}
