import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double size = constantsize(context);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Icon(null),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text("GAMES",
              style: GoogleFonts.passionOne(
                  decoration: TextDecoration.none,
                  fontSize: 40,
                  color: ColorTheme.maincolor,
                  fontWeight: FontWeight.w400)),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
          child: GridView(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 40,
                  crossAxisSpacing: 20,
                  childAspectRatio: .9),
              children: List.generate(
                  5,
                  (index) => InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: ColorTheme.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 3,
                              color: ColorTheme.maincolor,
                            ),
                          ),
                        ),
                      ))),
        ));
  }
}
