import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sipfupdate/pages/splash_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://iqozxcehjjdennsabtrg.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imlxb3p4Y2VoampkZW5uc2FidHJnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQ2NDY1MzYsImV4cCI6MjAzMDIyMjUzNn0.03g6GMhhc01wbjaGkMfhg05I0zLyyx9_kGpzaxuo3Ns',
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme)),
      home: const SplashPage(),
    );
  }
}
