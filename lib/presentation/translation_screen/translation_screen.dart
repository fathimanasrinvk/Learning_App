import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class TranslationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double size = constantsize(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(null),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text("TRANSLATION",
            style: GoogleFonts.passionOne(
                decoration: TextDecoration.none,
                fontSize: 40,
                color: ColorTheme.maincolor,
                fontWeight: FontWeight.w400)),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(size * 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 35,
                  width: 120,
                  decoration: BoxDecoration(
                    color: ColorTheme.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 2,
                      color: ColorTheme.maincolor,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "English",
                        style: GoogleFonts.roboto(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            color: ColorTheme.maincolor,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Icon(
                    Icons.arrow_right_alt,
                    color: ColorTheme.maincolor,
                    size: 25,
                  ),
                ),
                Container(
                  height: 35,
                  width: 120,
                  decoration: BoxDecoration(
                    color: ColorTheme.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 2,
                      color: ColorTheme.maincolor,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Malayalam",
                        style: GoogleFonts.roboto(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            color: ColorTheme.maincolor,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
