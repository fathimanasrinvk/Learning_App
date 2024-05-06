import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/presentation/alphabet%20screen/alphabet%20screen.dart';
import 'package:gaming_app/presentation/game%20screen/game%20screen.dart';
import 'package:gaming_app/presentation/word%20screen/word%20screen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../translation_screen/translation_screen.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var names = [
      'START WITH ALPHABETS',
      'LEARN WITH WORDS',
      'LEARN WITH GAMES',
      'TRANSLATION'
    ];
    var screen = [AlphabetScreen(), WordScreen(), GameScreen(), TranslationScreen()];
    double size = constantsize(context);
    return Scaffold(
        body: Stack(children: [
      // Background image
      Positioned.fill(
        child: Image.asset(
          "assets/images/home page.PNG",
          fit: BoxFit.fill,
        ),
      ),
      Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leadingWidth: double.infinity,
            leading: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hi, Maya👋",
                      style: GoogleFonts.nunito(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          color: ColorTheme.maincolor,
                          fontWeight: FontWeight.bold)),
                  Text("Let’s start learning!",
                      style: GoogleFonts.nunito(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          color: ColorTheme.maincolor,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: GridView(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 60,
                        crossAxisSpacing: 20,
                        childAspectRatio: .9),
                    children: List.generate(
                        4,
                        (index) => InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => screen[index]));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: ColorTheme.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 3,
                                    color: ColorTheme.maincolor,
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      names[index],
                                      style: GoogleFonts.passionOne(
                                        decoration: TextDecoration.none,
                                        fontSize: 25,
                                        color: ColorTheme.maincolor,
                                      ),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            ))),
              ),
            ],
          ))
    ]));
  }
}
