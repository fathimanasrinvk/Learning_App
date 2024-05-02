import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/colors.dart';

class AlphabetScreen extends StatelessWidget {
  final List<String> capitalAlphabets = List.generate(26, (index) => String.fromCharCode('A'.codeUnitAt(0) + index));
  final List<String> smallAlphabets =
  List.generate(26, (index) => String.fromCharCode('a'.codeUnitAt(0) + index));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverPadding(
          padding:  EdgeInsets.only(top: 100),
          sliver:SliverList( delegate: SliverChildListDelegate([ Text(
            "CAPITAL LETTERS",textAlign: TextAlign.center,
            style: GoogleFonts.passionOne(
          decoration: TextDecoration.none,
          fontSize: 45,
          color: ColorTheme.maincolor,fontWeight:FontWeight.bold
          )
          )])),
        ),
        SliverPadding( padding:  EdgeInsets.all(10),
            sliver:SliverList( delegate: SliverChildListDelegate([
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 8.0, // Adjust the spacing between letters
                runSpacing: 5, // Adjust the spacing between rows
                children: capitalAlphabets.map((letter) {
                  return Padding(
                    padding:  EdgeInsets.only(left: 10,right: 10),
                    child: Text(
                      letter,
                      style: GoogleFonts.peddana(
                          decoration: TextDecoration.none,
                          fontSize: 40,
                          color: ColorTheme.maincolor,fontWeight:FontWeight.w400
                      ) // Adjust font size as needed
                    ),
                  );
                }).toList(),
              ),]))),
        SliverPadding(
          padding:  EdgeInsets.only(top: 40),
          sliver:SliverList( delegate: SliverChildListDelegate([ Text(
            "SMALL LETTERS",textAlign: TextAlign.center,
            style: GoogleFonts.passionOne(
                decoration: TextDecoration.none,
                fontSize: 45,
                color: ColorTheme.maincolor,fontWeight:FontWeight.bold
            )
          )])),
        ),
        SliverPadding( padding:  EdgeInsets.all(10),
            sliver:SliverList( delegate: SliverChildListDelegate([
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 8.0, // Adjust the spacing between letters
                runSpacing: 5, // Adjust the spacing between rows
                children: smallAlphabets.map((letter) {
                  return Padding(
                    padding:  EdgeInsets.only(left: 10,right: 10),
                    child: Text(
                      letter,
                      style: GoogleFonts.peddana(
                          decoration: TextDecoration.none,
                          fontSize: 40,
                          color: ColorTheme.maincolor,fontWeight:FontWeight.w400
                      ) // Adj // Adjust font size as needed
                    ),
                  );
                }).toList(),
              ),]))),
       ]));
  }
}
