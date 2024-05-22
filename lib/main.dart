import 'package:flutter/material.dart';
import 'package:gaming_app/presentation/home_screen/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(
          name: 'git',
        )
        // home: LoginScreen()
        // home:SplashScreen(),
        //home:WordScreen(),
        //    home:RegistrationScreen(),
        //    home:OnboardingScreen(),
        //    home:TranslationScreen()
        );
  }
}
