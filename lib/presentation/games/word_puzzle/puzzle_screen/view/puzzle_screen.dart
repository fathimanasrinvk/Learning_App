import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/presentation/games/word_puzzle/score_screen/view/score_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class PuzzleScreen extends StatelessWidget {
  const PuzzleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: ColorTheme.maincolor,
            size: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            //   mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "WELCOME TO WORD PUZZLE",
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
                    image: AssetImage("assets/images/abcd.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Text(
                "1. Find The Original Word",
                style: GoogleFonts.poppins(
                  color: ColorTheme.maincolor,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    size.width * 0.1, 0, size.width * 0.1, 0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      mainAxisExtent: 80,
                      childAspectRatio: 1.8,
                      crossAxisSpacing: 10,
                      maxCrossAxisExtent: 80),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) => Container(
                    height: size.height * 0.080,
                    width: 200,
                    decoration: BoxDecoration(
                        color: ColorTheme.maincolor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      "A",
                      style: GoogleFonts.poppins(
                          color: ColorTheme.white, fontWeight: FontWeight.bold),
                    )),
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
                          builder: (context) => const WordPuzzleScoreScreen()));
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
