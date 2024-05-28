import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/core/constants/global_text_style.dart';
import 'package:gaming_app/presentation/game_screen/view/game_screen.dart';
import 'package:gaming_app/presentation/games/hangman/hangman_datas.dart';
import 'package:gaming_app/presentation/games/tens_quiz/quiz_screen/view/quiz_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../hangman_game_screen/view/hangman_game_screen.dart';

class LevelScreenHangman extends StatelessWidget {
  const LevelScreenHangman({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: size.height * 0.1),
        child: Center(
          child: Column(
            children: [
              Text("Choose Your Level", style: GlobalTextStyles.secondTittle),
              SizedBox(
                height: size.height * .1,
              ),
              Container(
                  height: size.height * .15,
                  width: size.width * .750,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HangmanGameScreen(questions: beginnerQuestions)));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorTheme.maincolor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: Text(
                        "BEGINNER",
                        style: GlobalTextStyles.subTitle4,
                      ))),
              SizedBox(
                height: size.height * .1,
              ),
              Container(
                  height: size.height * .15,
                  width: size.width * .750,
                  child: ElevatedButton(
                      onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HangmanGameScreen(questions: mediumQuestions)));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorTheme.maincolor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: Text(
                        "MEDIUM",
                        style: GlobalTextStyles.subTitle4,
                      ))),
              SizedBox(
                height: size.height * .1,
              ),
              Container(
                  height: size.height * .15,
                  width: size.width * .750,
                  child: ElevatedButton(
                      onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HangmanGameScreen(questions: expertQuestions)));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorTheme.maincolor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: Text(
                        "EXPERT",
                        style: GlobalTextStyles.subTitle4,
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}