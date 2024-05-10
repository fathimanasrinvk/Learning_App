import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';



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
    double size = constantsize(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(null),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text("WORDS",
            style: GoogleFonts.passionOne(
                decoration: TextDecoration.none,
                fontSize: size*40,
                color: ColorTheme.maincolor,
                fontWeight: FontWeight.w400)),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: size*10,
          crossAxisSpacing: size*10,
          childAspectRatio: 1,
        ),
        children: List.generate(
            10,
            (index) => Container(
                  child: Column(
                    children: [
                      Expanded(
                        child: Image(
                          image: AssetImage(images[index]),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          names[index],
                          style: GoogleFonts.poppins(
                              color: ColorTheme.maincolor,
                              fontSize: size*20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(size*20),
                  ),
                )),
      ),
    );
  }
}
