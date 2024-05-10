import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/presentation/games/tens_quiz/score_screen/view/score_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class TenseQuizScreen extends StatelessWidget {
  const TenseQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(leading: Icon(null)),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            Text(
              "WELCOME TO TENSE QUIZ",
              style: GoogleFonts.poppins(
                  color: ColorTheme.maincolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            SizedBox(
              height: size.height * .09,
            ),
            Text(
              "1. What is the past tense of Eat ?",
              style: GoogleFonts.poppins(
                color: ColorTheme.maincolor,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: size.height * .09,
            ),
            Container(
                width: size.width * .750,
                height: size.height * .25,
                decoration: BoxDecoration(
                  color: ColorTheme.primarycolor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  style: TextStyle(color: ColorTheme.maincolor),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Enter Your Answer",
                      hintStyle:
                          TextStyle(color: ColorTheme.lightgrey, fontSize: 15)),
                )),
            SizedBox(
              height: size.height * .09,
            ),
            Container(
              height: size.height * .05,
              width: size.width * .20,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TensQuizScoreScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorTheme.maincolor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text(
                    "OK",
                    style: TextStyle(color: ColorTheme.white, fontSize: 15),
                  )),
            )
          ],
        )),
      ),
    );
  }
}
