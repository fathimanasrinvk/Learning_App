import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PuzzleScreen(),
  ));
}

class PuzzleScreen extends StatelessWidget {
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
                  image: DecorationImage(
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
                  decoration: InputDecoration(),
                ),
              ),
              SizedBox(height: size.height * 0.08),
              Container(
                height: size.height * .05,
                width: size.width * .20,
                child: ElevatedButton(
                    onPressed: () {},
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
