import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WordScreen(),
  ));
}

class WordScreen extends StatelessWidget {
  var images = [
    "assets/words/a.png",
    "assets/words/b.png",
    "assets/words/c.png",
    "assets/words/d.png",
    "assets/words/e.png",
    "assets/words/f.png",
    "assets/words/g.png",
    "assets/words/h.png",
    "assets/words/i.png",
    "assets/words/j.png"
  ];
  var names = [
    "Ambulance",
    "Ball",
    "Cat",
    "Doll",
    "Elephant",
    "Fish",
    "Giraffe",
    "Home",
    "Ice Cream",
    "Jack Fruit"
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(null),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text("WORDS",
            style: GoogleFonts.passionOne(
                decoration: TextDecoration.none,
                fontSize: 40,
                color: ColorTheme.maincolor,
                fontWeight: FontWeight.w400)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Align the column center
            children: [
              SizedBox(
                height: size.height * .06,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    size.width * .01, 0, size.width * .01, 0),
                child: GridView(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1 / 1.3,
                  ),
                  children: List.generate(
                      10,
                      (index) => Container(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Image(
                                    image: AssetImage(images[index]),
                                    height: size.height * .6,
                                    width: size.width * .6,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    names[index],
                                    style: GoogleFonts.poppins(
                                        color: ColorTheme.maincolor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
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
