import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/presentation/games/hangman/score_screen/view/score_screen.dart';
import 'package:google_fonts/google_fonts.dart';


class HangmanGameScreen extends StatelessWidget {
  const HangmanGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(null),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            //   mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "WELCOME TO HANGMAN",
                style: GoogleFonts.poppins(
                  color: ColorTheme.maincolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/images/img.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Text(
                " Identify The Original Word",
                style: GoogleFonts.poppins(
                  color: ColorTheme.maincolor,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    size.width * 0.09, 0, size.width * 0.09, 0),
                child: Text(
                  " hint: Contrary to popular belief, Lorem Ipsum",
                  style: GoogleFonts.poppins(
                    color: ColorTheme.maincolor,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    size.width * 0.2, 0, size.width * 0.2, 0),
                child: TextField(
                  style: TextStyle(color: ColorTheme.maincolor),
                  decoration: const InputDecoration(),
                ),
              ),
              SizedBox(height: size.height * 0.08),
              SizedBox(
                height: size.height * .05,
                width: size.width * .20,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HangmanScoreScreen()));
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
          ),
        ),
      ),
    );
  }
}
