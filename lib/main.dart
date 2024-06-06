
import 'package:flutter/material.dart';
import 'package:gaming_app/presentation/splash_screen/view/splash_screen.dart';
import 'package:gaming_app/presentation/translation_screen/controller/transilation_screen_controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
ChangeNotifierProvider(create: (context) => TransilationController())
    ],child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomeScreen(),
      //  home: PuzzleScreen()
      // home: LoginScreen()
       home: SplashScreen(),
      //home:WordScreen(),
      //    home:RegistrationScreen(),
      //    home:OnboardingScreen(),
      //    home:TranslationScreen()
    );
  }
}
