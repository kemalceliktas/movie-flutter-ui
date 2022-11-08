import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_neon_ui/screens/home_screen.dart';
import 'package:movie_neon_ui/screens/movie_detail_screen.dart';
import 'package:movie_neon_ui/screens/onboarding_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: ThemeData(
        fontFamily: GoogleFonts.openSans().fontFamily,
        primarySwatch: Colors.blue,
      ),
      home:const OnBoardingScreen(),
    );
  }
}

