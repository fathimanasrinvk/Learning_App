import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GameScreen(),
  ));
}

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Icon(null),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text("GAMES",
              style: GoogleFonts.poppins(
                  decoration: TextDecoration.none,
                  fontSize: 40,
                  color: ColorTheme.maincolor,
                  fontWeight: FontWeight.w400)),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: size.height * .9,
                width: size.width,
                color: ColorTheme.maincolor,
                
              )
            ],
          ),
        ));
  }
}
