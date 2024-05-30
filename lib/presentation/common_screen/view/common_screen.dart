

import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/core/constants/global_text_style.dart';
import 'package:gaming_app/presentation/game_screen/view/game_screen.dart';
import 'package:gaming_app/presentation/games/gk/level_screen/view/level_screen.dart';

class CongratsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: ColorTheme.maincolor,
      appBar:
          AppBar(backgroundColor: ColorTheme.maincolor, leading: Icon(null)),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: size.height * .2,
          ),
          Container(
            height: size.height * .3,
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
              ],
            ),
          ),
          SizedBox(height: size.height * .1),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => GameScreen()));
            },
            child: Text(
              "Back To Games",
              style: GlobalTextStyles.subTitle2,
            ),
          ),
        ],
      )),
    );
  }
}
