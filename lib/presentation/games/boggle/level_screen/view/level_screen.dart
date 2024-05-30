import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/core/constants/global_text_style.dart';
import 'package:gaming_app/presentation/games/boggle/boggle_game_screen/view/boggle_game_screen.dart';



class LevelScreenBoggle extends StatelessWidget {
  const LevelScreenBoggle({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: size.height * 0.1),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BoggleGameScreen(
                                      level: 'easy',
                                    )));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorTheme.maincolor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: Text("EASY", style: GlobalTextStyles.subTitle4))),
              SizedBox(
                height: size.height * .1,
              ),
              Container(
                  height: size.height * .15,
                  width: size.width * .750,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BoggleGameScreen(
                                      level: 'medium',
                                    )));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorTheme.maincolor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child:
                          Text("MEDIUM", style: GlobalTextStyles.subTitle4))),
              SizedBox(
                height: size.height * .1,
              ),
              Container(
                  height: size.height * .15,
                  width: size.width * .750,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BoggleGameScreen(
                                      level: 'hard',
                                    )));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorTheme.maincolor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: Text("HARD", style: GlobalTextStyles.subTitle4))),
            ],
          ),
        ),
      ),
    );
  }
}
