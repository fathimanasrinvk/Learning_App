import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var names = [
      'START WITH ALPHABETS',
      'LEARN WITH WORDS',
      'LEARN WITH GAMES',
      'TRANSLATION'
    ];
    var screen = [];
    double size = constantsize(context);
    return Scaffold(
        body: Stack(children: [
      // Background image
      Positioned.fill(
        child: Image.asset(
          "assets/images/home page.PNG",
          fit: BoxFit.fill,
        ),
      ),
      Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leadingWidth: double.infinity,
            leading: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi, Maya👋",
                    style: TextStyle(
                        color: ColorTheme.maincolor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("Let’s start learning!",
                      style: TextStyle(
                          color: ColorTheme.maincolor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: GridView(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 60,
                        crossAxisSpacing: 20,
                        childAspectRatio: .9),
                    children: List.generate(
                        4,
                        (index) => InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => screen[index]));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: ColorTheme.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 3,
                                    color: ColorTheme.maincolor,
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      names[index],
                                      style: GoogleFonts.passionOne(
                                        decoration: TextDecoration.none,
                                        fontSize: 31,
                                        color: ColorTheme.maincolor,
                                      ),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            ))),
              ),
            ],
          ))
    ]));
  }
}
