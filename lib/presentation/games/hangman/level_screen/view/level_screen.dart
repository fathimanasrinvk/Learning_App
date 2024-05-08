import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/presentation/game_screen/view/game_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelScreenHangman extends StatelessWidget {
  const LevelScreenHangman({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
         leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GameScreen()));
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: ColorTheme.maincolor,
            size: 30,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Choose Your Level",
              style: GoogleFonts.poppins(
                  color: ColorTheme.maincolor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * .1,
            ),
            Container(
                height: size.height * .15,
                width: size.width * .750,
                child: ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => const TensQuizScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorTheme.maincolor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: Text(
                      "EASY",
                      style: GoogleFonts.poppins(
                          color: ColorTheme.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ))),
            SizedBox(
              height: size.height * .1,
            ),
            Container(
                height: size.height * .15,
                width: size.width * .750,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorTheme.maincolor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: Text(
                      "MEDIUM",
                      style: GoogleFonts.poppins(
                          color: ColorTheme.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ))),
            SizedBox(
              height: size.height * .1,
            ),
            Container(
                height: size.height * .15,
                width: size.width * .750,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorTheme.maincolor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: Text(
                      "HARD",
                      style: GoogleFonts.poppins(
                          color: ColorTheme.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ))),
          ],
        ),
      ),
    );
  }
}
