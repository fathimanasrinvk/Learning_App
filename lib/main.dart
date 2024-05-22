import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gaming_app/presentation/games/tens_quiz/controller/tqcontroller.dart';
import 'package:gaming_app/presentation/home_screen/view/home_screen.dart';
import 'package:gaming_app/presentation/login_screen/view/login_screen.dart';
import 'package:gaming_app/presentation/onboarding_screen/view/onboarding_screen.dart';
import 'package:gaming_app/presentation/registration_page/view/registration_screen.dart';
import 'package:gaming_app/presentation/splash_screen/view/splash_screen.dart';
import 'package:gaming_app/presentation/translation_screen/view/translation_screen.dart';
import 'package:gaming_app/presentation/word_screen/view/word_screen.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
        ChangeNotifierProvider(create: (context) => TenseQuizController()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
       home: HomeScreen(name: 'git',)
       // home: LoginScreen()
    // home:SplashScreen(),
     //home:WordScreen(),
     //    home:RegistrationScreen(),
     //    home:OnboardingScreen(),
     //    home:TranslationScreen()
    ));
  }
}
