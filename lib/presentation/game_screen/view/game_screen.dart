import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/presentation/games/boggle/level_screen/view/level_screen.dart';
import 'package:gaming_app/presentation/games/gk/level_screen/view/level_screen.dart';
import 'package:gaming_app/presentation/games/hangman/level_screen/view/level_screen.dart';
import 'package:gaming_app/presentation/games/tens_quiz/level_screen/view/level_screen.dart';
import 'package:gaming_app/presentation/games/word_puzzle/level_screen/view/level_screen.dart';
import 'package:gaming_app/presentation/home_screen/home_screen.dart';
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
    LevelScreenGK(),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        leading:Icon(
           null
          ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text("GAMES",
            style: GoogleFonts.poppins(
                decoration: TextDecoration.none,
                fontSize: 30,
                color: ColorTheme.maincolor,


                fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Align the column center
            children: [
              SizedBox(
                height: size.height * .09,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    size.width * .04, 0, size.width * .04, 0),
                child: GridView(
                  shrinkWrap: true,
                  gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 40,
                    crossAxisSpacing: 20,
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
                                  borderRadius: BorderRadius.circular(20),
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
    );
  }
}
