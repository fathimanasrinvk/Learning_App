import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class WordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double size = constantsize(context);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Icon(null),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text("WORDS",  style: GoogleFonts.passionOne(
              decoration: TextDecoration.none,
              fontSize: 45,
              color: ColorTheme.maincolor,fontWeight:FontWeight.bold
          )),

        ),
       );
  }
}
