import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/core/constants/global_text_style.dart';
import 'package:gaming_app/presentation/games/gk/gk_quiz_screen/controller/gk_quiz_controller.dart';
import 'package:gaming_app/presentation/games/gk/level_screen/view/level_screen.dart';
import 'package:gaming_app/presentation/games/tens_quiz/level_screen/view/level_screen.dart';
import 'package:provider/provider.dart';

class GkQuizScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final score = Provider.of<QuizProvider>(context).score;
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: ColorTheme.maincolor,
      appBar: AppBar(
          backgroundColor: ColorTheme.maincolor,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: ColorTheme.white,
            ),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LevelScreenGK()));
            },
          )),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: size.height * .25,
          ),
          Container(
            height: size.height * .4,
            width: size.width * .70,
            decoration: BoxDecoration(
                color: ColorTheme.white,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * .027,
                ),
                Image.asset("assets/images/congrats.png"),
                SizedBox(
                  height: size.height * .02,
                ),
                Text(
                  "Your Score is :$score ",
                  style: GlobalTextStyles.subTitle3,
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
