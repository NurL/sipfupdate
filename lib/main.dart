import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sipfupdate/pages/splash_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://tlouwoalgurbrwvaoiwg.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRsb3V3b2FsZ3VyYnJ3dmFvaXdnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQ2NTA2NTgsImV4cCI6MjAzMDIyNjY1OH0.S3bOh4yUQmuOdvFLYqNmRu-fSoNEVzg2-q5BeT7fves',
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
