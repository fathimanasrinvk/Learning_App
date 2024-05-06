import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gaming_app/presentation/home_screen/home_screen.dart';
import 'package:gaming_app/presentation/login_screen/view/login_screen.dart';
import 'package:gaming_app/presentation/registration_page/view/registration_screen.dart';
import 'package:gaming_app/presentation/splash_screen/view/splash_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen()
       // home: LoginScreen()
     // home:SplashScreen(),
        home:RegistrationScreen()

    );
  }
}
