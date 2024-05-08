import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/colors.dart';

class AlphabetScreen extends StatelessWidget {
  final List<String> capitalAlphabets = List.generate(
      26, (index) => String.fromCharCode('A'.codeUnitAt(0) + index));
  final List<String> smallAlphabets = List.generate(
      26, (index) => String.fromCharCode('a'.codeUnitAt(0) + index));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverPadding(
        padding: const EdgeInsets.only(top: 100),
        sliver: SliverList(
            delegate: SliverChildListDelegate([
          Text("CAPITAL LETTERS",
              textAlign: TextAlign.center,
              style: GoogleFonts.passionOne(
                  decoration: TextDecoration.none,
                  fontSize: 35,
                  color: ColorTheme.maincolor,
                  fontWeight: FontWeight.w400))
        ])),
      ),
      SliverPadding(
          padding: const EdgeInsets.all(20),
          sliver: SliverList(
              delegate: SliverChildListDelegate([
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 8.0,
              runSpacing: 5,
              children: capitalAlphabets.map((letter) {
                return Padding(
                  padding:const  EdgeInsets.only(left: 10, right: 10),
                  child: Text(letter,
                      style: GoogleFonts.peddana(
                          decoration: TextDecoration.none,
                          fontSize: 38,
                          color: ColorTheme.maincolor,
                          fontWeight:
                              FontWeight.w400)
                      ),
                );
              }).toList(),
            ),
          ]))),
      SliverPadding(
        padding: EdgeInsets.only(top: 50),
        sliver: SliverList(
            delegate: SliverChildListDelegate([
          Text("SMALL LETTERS",
              textAlign: TextAlign.center,
              style: GoogleFonts.passionOne(
                  decoration: TextDecoration.none,
                  fontSize: 35,
                  color: ColorTheme.maincolor,
                  fontWeight: FontWeight.w400))
        ])),
      ),
      SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
              delegate: SliverChildListDelegate([
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 8.0,
              runSpacing: 5,
              children: smallAlphabets.map((letter) {
                return Padding(
                  padding:const  EdgeInsets.only(left: 10, right: 10),
                  child: Text(letter,
                      style: GoogleFonts.peddana(
                          decoration: TextDecoration.none,
                          fontSize: 40,
                          color: ColorTheme.maincolor,
                          fontWeight: FontWeight
                              .w400)
                      ),
                );
              }).toList(),
            ),
          ]))),
    ]));
  }
}
