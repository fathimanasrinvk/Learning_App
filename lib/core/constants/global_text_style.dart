import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalTextStyles {
  static TextStyle mainTittle = GoogleFonts.poppins(
      fontSize:40, fontWeight: FontWeight.bold, color: ColorTheme.maincolor);
  static TextStyle secondTittle = GoogleFonts.poppins(
      fontSize: 25, fontWeight: FontWeight.bold, color: ColorTheme.maincolor);
  static TextStyle subTitle1 = GoogleFonts.poppins(
      fontSize: 15, fontWeight: FontWeight.bold, color: ColorTheme.maincolor);
       static TextStyle subTitle2 = GoogleFonts.poppins(
      fontSize: 18, fontWeight: FontWeight.bold, color: ColorTheme.maincolor);
       static TextStyle subTitle3 = GoogleFonts.poppins(
      fontSize: 20, fontWeight: FontWeight.bold, color: ColorTheme.maincolor);
}
