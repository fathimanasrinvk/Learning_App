import 'package:flutter/material.dart';
import 'package:gaming_app/presentation/games/gk/gk_quiz_screen/controller/gk_quiz_controller.dart';
import 'package:gaming_app/presentation/splash_screen/view/splash_screen.dart';
import 'package:provider/provider.dart';

import 'presentation/games/gk/level_screen/view/level_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => QuizProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: LevelScreenGK(),
        // home: LoginScreen()
       home:SplashScreen(),
        //home:WordScreen(),
        //    home:RegistrationScreen(),
        //    home:OnboardingScreen(),
        //    home:TranslationScreen()
      ),
    );
  }
}
