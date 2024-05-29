import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/core/constants/global_text_style.dart';
import 'package:gaming_app/presentation/game_screen/view/game_screen.dart';
import 'package:gaming_app/presentation/games/gk/gk_quiz_screen/view/gk_quiz_screen.dart';

class LevelScreenGk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
            GameScreen()));
        return false;
      },
      child: Scaffold(
        appBar: AppBar( leading: IconButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
              GameScreen()));
        }, icon: Icon(Icons.arrow_back,
          color: ColorTheme.maincolor,)),
          title:Text("Choose Your Level", style: GlobalTextStyles.secondTittle),
          centerTitle: true,),
        body: Padding(
          padding: EdgeInsets.only(top: size.height * 0.08),
          child: Center(
            child: Column(
              children: [
                Container(
                    height: size.height * .15,
                    width: size.width * .750,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => QuizScreen(
                                    difficulty: 'easy',
                                  )));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorTheme.maincolor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        child: Text(
                          "EASY",
                          style: GlobalTextStyles.subTitle4,
                        ))),
                SizedBox(
                  height: size.height * .1,
                ),
                Container(
                    height: size.height * .15,
                    width: size.width * .750,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => QuizScreen(
                                    difficulty: 'medium',
                                  )));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorTheme.maincolor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        child:
                            Text("MEDIUM", style: GlobalTextStyles.subTitle4))),
                SizedBox(
                  height: size.height * .1,
                ),
                Container(
                    height: size.height * .15,
                    width: size.width * .750,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => QuizScreen(
                                    difficulty: 'hard',
                                  )));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorTheme.maincolor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        child: Text("HARD", style: GlobalTextStyles.subTitle4))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:gaming_app/presentation/games/gk/gk_quiz_screen/view/gk_quiz_screen.dart';


// class LevelSelectionScreen extends StatelessWidget {
//   void navigateToQuizScreen(BuildContext context, String difficulty) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => QuizScreen(difficulty: difficulty),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Select Difficulty Level"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () => navigateToQuizScreen(context, "easy"),
//               child: Text("Easy"),
//             ),
//             ElevatedButton(
//               onPressed: () => navigateToQuizScreen(context, "medium"),
//               child: Text("Medium"),
//             ),
//             ElevatedButton(
//               onPressed: () => navigateToQuizScreen(context, "hard"),
//               child: Text("Hard"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:gaming_app/core/constants/colors.dart';
// import 'package:gaming_app/core/constants/global_text_style.dart';
// import 'package:gaming_app/presentation/game_screen/view/game_screen.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// import '../../gk_quiz_screen/view/gk_quiz_screen.dart';

// class LevelScreenGK extends StatelessWidget {
//   const LevelScreenGK({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.sizeOf(context);
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back,
//             color: ColorTheme.maincolor,
//           ),
//           onPressed: () {
//             Navigator.of(context)
//                 .push(MaterialPageRoute(builder: (context) => GameScreen()));
//           },
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.only(top: size.height * 0.0),
//         child: Center(
//           child: Column(
//             children: [
//               Text(
//                 "Choose Your Level",
//                 style: GoogleFonts.poppins(
//                     color: ColorTheme.maincolor,
//                     fontSize: 25,
//                     fontWeight: FontWeight.bold),
//               ),
//               SizedBox(
//                 height: size.height * .1,
//               ),
//               Container(
//                   height: size.height * .15,
//                   width: size.width * .750,
//                   child: ElevatedButton(
//                       onPressed: () {
//                         Provider.of<QuizProvider>(context, listen: false)
//                             .selectDifficulty(Difficulty.easy);
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => GkQuizScreen()));
//                       },
//                       style: ElevatedButton.styleFrom(
//                           backgroundColor: ColorTheme.maincolor,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15))),
//                       child: Text("EASY", style: GlobalTextStyles.subTitle4))),
//               SizedBox(
//                 height: size.height * .1,
//               ),
//               Container(
//                   height: size.height * .15,
//                   width: size.width * .750,
//                   child: ElevatedButton(
//                       onPressed: () {
//                         Provider.of<QuizProvider>(context, listen: false)
//                             .selectDifficulty(Difficulty.medium);
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => GkQuizScreen()));
//                       },
//                       style: ElevatedButton.styleFrom(
//                           backgroundColor: ColorTheme.maincolor,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15))),
//                       child:
//                           Text("MEDIUM", style: GlobalTextStyles.subTitle4))),
//               SizedBox(
//                 height: size.height * .1,
//               ),
//               Container(
//                   height: size.height * .15,
//                   width: size.width * .750,
//                   child: ElevatedButton(
//                       onPressed: () {
//                         Provider.of<QuizProvider>(context, listen: false)
//                             .selectDifficulty(Difficulty.hard);
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => GkQuizScreen()));
//                       },
//                       style: ElevatedButton.styleFrom(
//                           backgroundColor: ColorTheme.maincolor,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15))),
//                       child: Text("HARD", style: GlobalTextStyles.subTitle4))),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
