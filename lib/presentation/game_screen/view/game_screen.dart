import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/core/constants/global_text_style.dart';
import 'package:gaming_app/presentation/games/boggle/level_screen/view/level_screen.dart';
import 'package:gaming_app/presentation/games/gk/level_screen/view/level_screen.dart';
import 'package:gaming_app/presentation/games/hangman/level_screen/view/level_screen.dart';
import 'package:gaming_app/presentation/games/tens_quiz/level_screen/view/level_screen.dart';
import 'package:gaming_app/presentation/games/word_puzzle/level_screen/view/level_screen.dart';
import 'package:gaming_app/presentation/home_screen/view/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class GameScreen extends StatelessWidget {
  var images = [
    "assets/images/boggle.jpeg",
    "assets/images/img.png",
    "assets/images/wrdpzzle.png",
    "assets/images/tensequiz.png",
    "assets/images/img_1.png"
  ];
  var screens = [
    LevelScreenBoggle(),
    LevelScreenHangman(),
    LevelScreenWordPuzzle(),
    LevelScreenTensQuiz(),
    LevelScreenGk(),
  ];

  @override
  Widget build(BuildContext context) {
    double size = constantsize(context);
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
            HomeScreen()));
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
            HomeScreen()));
          }, icon: Icon(Icons.arrow_back,
          color: ColorTheme.maincolor,)),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text("GAMES", style: GlobalTextStyles.mainTittle),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Align the column center
              children: [
                SizedBox(
                  height: size * 70,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(size * 20, 0, size * 20, 0),
                  child: GridView(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: size * 40,
                      crossAxisSpacing: size * 20,
                      childAspectRatio: 1 / .9,
                    ),
                    children: List.generate(
                        5,
                        (index) => InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => screens[index]));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(size * 20),
                                    image: DecorationImage(
                                        image: AssetImage(images[index]),
                                        fit: BoxFit.fill)),
                              ),
                            )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
