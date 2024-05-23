import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/core/constants/global_text_style.dart';
import 'package:gaming_app/presentation/games/word_puzzle/level_screen/view/level_screen.dart';

class WordPuzzleScoreScreen extends StatelessWidget {
  const WordPuzzleScoreScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: ColorTheme.maincolor,
      appBar: AppBar(
        backgroundColor: ColorTheme.maincolor,
        leading: Icon(null),
      ),
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
                // Text(
                //   "Your Score is ",
                //   style: GlobalTextStyles.subTitle3,
                // )
              ],
            ),
          )
        ],
      )),
    );
  }
}
