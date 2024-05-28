import 'package:flutter/material.dart';
import 'package:gaming_app/presentation/splash_screen/view/splash_screen.dart';


import 'presentation/games/gk/level_screen/view/level_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: LevelScreenGK(),
      // home: LoginScreen()
      home: LevelScreenGk(),
      //home:WordScreen(),
      //    home:RegistrationScreen(),
      //    home:OnboardingScreen(),
      //    home:TranslationScreen()
    );
  }
}
