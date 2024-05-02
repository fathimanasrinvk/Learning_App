import 'package:flutter/material.dart';
import 'package:gaming_app/presentation/onboarding_screen/view/onboarding_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen()
    );
  }
}
