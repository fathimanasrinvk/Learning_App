// import 'package:flutter/material.dart';

// class ScoreScreen extends StatelessWidget {
//   final int score;
//   final int total;

//   ScoreScreen({required this.score, required this.total});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Score"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "Your Score",
//               style: TextStyle(fontSize: 24.0),
//             ),
//             Text(
//               "$score / $total",
//               style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20.0),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: Text("Restart"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/core/constants/global_text_style.dart';
import 'package:gaming_app/presentation/games/gk/level_screen/view/level_screen.dart';

class GkQuizScoreScreen extends StatelessWidget {
  final int score;
  final int total;

  GkQuizScoreScreen({required this.score, required this.total});

  @override
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: ColorTheme.maincolor,
      appBar:
          AppBar(backgroundColor: ColorTheme.maincolor, leading: Icon(null)),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: size.height * .1,
          ),
          Container(
            height: size.height * .4,
            width: size.width * .70,
            decoration: BoxDecoration(
                color: ColorTheme.white,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * .027,
                ),
                Image.asset("assets/images/congrats.png"),
                Column(
                  children: [
                    Text(
                      "Your Score",
                      style: GlobalTextStyles.subTitle3,
                    ),
                    Text(
                      "$score ",
                      style: GlobalTextStyles.subTitle3,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * .1),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
                  LevelScreenGk()));
            },
            child: Text(
              "Change Difficulty",
              style: GlobalTextStyles.subTitle2,
            ),
          ),
        ],
      )),
    );
  }
}
