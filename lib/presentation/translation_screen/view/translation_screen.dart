import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class TranslationScreen extends StatefulWidget {
  @override
  State<TranslationScreen> createState() => _TranslationScreenState();
}

class _TranslationScreenState extends State<TranslationScreen> {
  TextEditingController tcontroller = TextEditingController();

  @override
  void dispose() {
    tcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double size = constantsize(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(null),
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text("TRANSLATION",
              style: GoogleFonts.passionOne(
                  decoration: TextDecoration.none,
                  fontSize: 40,
                  color: ColorTheme.maincolor,
                  fontWeight: FontWeight.w400)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 35,
                    width: 120,
                    decoration: BoxDecoration(
                      color: ColorTheme.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 2,
                        color: ColorTheme.maincolor,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "English",
                          style: GoogleFonts.roboto(
                              decoration: TextDecoration.none,
                              fontSize: 15,
                              color: ColorTheme.maincolor,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Icon(
                      Icons.arrow_right_alt,
                      color: ColorTheme.maincolor,
                      size: 25,
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 120,
                    decoration: BoxDecoration(
                      color: ColorTheme.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 2,
                        color: ColorTheme.maincolor,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Malayalam",
                          style: GoogleFonts.roboto(
                              decoration: TextDecoration.none,
                              fontSize: 15,
                              color: ColorTheme.maincolor,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'English',
                    style: TextStyle(
                        fontSize: 18,
                        color: ColorTheme.maincolor,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(child: Icon(
                    Icons.cancel_outlined,
                    color: ColorTheme.maincolor,
                  ),onTap: () {
                    setState(() {
                      tcontroller.clear();
                    });
                  },)
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: tcontroller,
                  maxLines: 6,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: ColorTheme.maincolor),
                      hintText: ' Enter your text',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: ColorTheme.maincolor,
                      width: 5))),
                )),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: ColorTheme.maincolor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7))),
              onPressed: () {},
              child: Text(
                "Translate",
                style: TextStyle(
                  color: ColorTheme.primarycolor,
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 40,left: 20),
              child: Row( mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'മലയാളം',
                    style: TextStyle(
                        fontSize: 18,
                        color: ColorTheme.maincolor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: tcontroller,
                maxLines: 6,
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: ColorTheme.maincolor),
                    hintText: ' Enter your text',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: ColorTheme.maincolor,
                            width: 5))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
