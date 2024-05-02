import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //  void initState() {
  //   Timer(Duration(seconds: 5), () {
  //     Navigator.of(context).pushReplacement(
  //         MaterialPageRoute(builder: (context) => ()));
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      
    );
  }
}
