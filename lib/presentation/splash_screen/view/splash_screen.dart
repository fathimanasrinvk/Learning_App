import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';

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
    return Scaffold(
      backgroundColor: ColorTheme.maincolor,
    );
  }
}
