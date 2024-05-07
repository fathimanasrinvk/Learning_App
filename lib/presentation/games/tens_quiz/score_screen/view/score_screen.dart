import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TensQuizScoreScreen(),
  ));
}

class TensQuizScoreScreen extends StatelessWidget {
  const TensQuizScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: ColorTheme.maincolor,
      appBar: AppBar(
        backgroundColor: ColorTheme.maincolor,
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: size.height * .25,
          ),
          Container(
            height: size.height * .4,
            width: size.width * .70,
            decoration: BoxDecoration(
                color: ColorTheme.white,
                borderRadius: BorderRadius.circular(20)),
          )
        ],
      )),
    );
  }
}
