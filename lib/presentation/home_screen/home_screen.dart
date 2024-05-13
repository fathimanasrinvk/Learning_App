import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/core/constants/global_text_style.dart';
import 'package:google_fonts/google_fonts.dart';
import '../alphabet_screen/view/alphabet_screen.dart';
import '../game_screen/view/game_screen.dart';
import '../translation_screen/view/translation_screen.dart';
import '../word_screen/view/word_screen.dart';

class HomeScreen extends StatelessWidget {
  final String name;

  HomeScreen({required this.name});

  @override
  Widget build(BuildContext context) {
    var names = [
      'START WITH ALPHABETS',
      'LEARN WITH WORDS',
      'LEARN WITH GAMES',
      'TRANSLATION'
    ];
    var screen = [
      AlphabetScreen(),
      WordScreen(),
      GameScreen(),
      TranslationScreen()
    ];
    double size = constantsize(context);
    return Scaffold(
        extendBody: true,
        body: Stack(children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              "assets/images/home screen background.PNG",
              fit: BoxFit.fill,
            ),
          ),
          Scaffold(
              backgroundColor: Colors.transparent,
              body: CustomScrollView(slivers: [
                SliverList(
                    delegate: SliverChildListDelegate([
                  SizedBox(height: size * 35),
                  Padding(
                    padding: EdgeInsets.only(left: size * 45, right: size * 45),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Hi, $name👋",
                          style: GlobalTextStyles.subTitle3),
                    ),
                  ),
                  Padding(
                      padding:
                          EdgeInsets.only(left: size * 45, right: size * 45),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text("Let’s start learning!",
                              style: GlobalTextStyles.subTitle1))),
                  SizedBox(height: size * 65)
                ])),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.fromLTRB(
                            size * 20, size * 20, size * 20, 0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => screen[index],
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: size * 10,
                              bottom: size * 10,
                              left: size * 25,
                              right: size * 25,
                            ),
                            child: Container(
                              height: size * 83,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xFFD9E1FF),
                                borderRadius: BorderRadius.circular(size * 5),
                              ),
                              child: Center(
                                child: Text(
                                  names[index],
                                  style: GlobalTextStyles.secondTittle,
                                  // style: GoogleFonts.passionOne(
                                  //   decoration: TextDecoration.none,
                                  //   fontSize: size * 30,
                                  //   color: ColorTheme.maincolor,
                                  // ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    childCount: 4,
                  ),
                ),
              ]))
        ]));
  }
}
