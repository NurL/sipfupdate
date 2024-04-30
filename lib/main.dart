import 'package:flutter/material.dart';

import 'package:sipfupdate/pages/login_page.dart';
import 'package:sipfupdate/pages/splash_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sipfupdate/pages/onboarding_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme(
        Theme.of(context).textTheme,
      )),
      home: OnboardingPage(),
    );
  }
}
