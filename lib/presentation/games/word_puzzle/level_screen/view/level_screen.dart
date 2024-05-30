import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/core/constants/global_text_style.dart';
import 'package:gaming_app/presentation/games/word_puzzle/puzzle_screen/puzzle_screen.dart';
import '../../word_puzzle datas/database.dart';

class LevelScreenWordPuzzle extends StatelessWidget {
  const LevelScreenWordPuzzle({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(leading: BackButton(color: ColorTheme.maincolor),
        title:Text("Choose Your Level", style: GlobalTextStyles.secondTittle),
        centerTitle: true,),
      body: Padding(
        padding: EdgeInsets.only(top: size.height * 0.08),
        child: Center(
          child: Column(
            children: [
              Container(
                  height: size.height * .15,
                  width: size.width * .750,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PuzzleScreen(words: DbData.easy)));
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
                          builder: (context) => PuzzleScreen(words: DbData.medium)));
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
                          builder: (context) => PuzzleScreen(words: DbData.hard)));
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