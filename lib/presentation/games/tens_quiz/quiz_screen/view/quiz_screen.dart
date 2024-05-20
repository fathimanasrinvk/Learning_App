import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/core/constants/global_text_style.dart';
import 'package:gaming_app/presentation/games/tens_quiz/score_screen/view/score_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TenseQuizScreen extends StatefulWidget {
  final String level;

  const TenseQuizScreen({Key? key, required this.level}) : super(key: key);

  @override
  _TenseQuizScreenState createState() => _TenseQuizScreenState();
}

class _TenseQuizScreenState extends State<TenseQuizScreen> {
  List<String>? questions;

  @override
  void initState() {
    super.initState();
    fetchQuestions(widget.level);
  }

  Future<void> fetchQuestions(String level) async {
    try {
      final response = await http.get(Uri.parse('http://127.0.0.1:8000/Tensequiz?level=$level'));

      if (response.statusCode == 200) {
        List<dynamic> data = jsonDecode(response.body);
        List<String> fetchedQuestions = data.map((e) => e['question'].toString()).toList();
        setState(() {
          questions = fetchedQuestions;
        });
      } else {
        throw Exception('Failed to fetch questions');
      }
    } catch (e) {
      print('Error fetching questions: $e');
      // Handle the error, such as showing an error message to the user
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(leading: Icon(null)),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text("WELCOME TO TENSE QUIZ", style: GlobalTextStyles.secondTittle),
              SizedBox(height: size.height * .09),
              if (questions != null && questions!.isNotEmpty)
                Text("Question 1: ${questions![0]}", style: GlobalTextStyles.subTitle3),
              SizedBox(height: size.height * .09),
              Container(
                width: size.width * .750,
                height: size.height * .25,
                decoration: BoxDecoration(
                  color: ColorTheme.primarycolor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  style: TextStyle(color: ColorTheme.maincolor),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: "Enter Your Answer",
                    hintStyle: TextStyle(color: ColorTheme.lightgrey, fontSize: 15),
                  ),
                ),
              ),
              SizedBox(height: size.height * .09),
              Container(
                height: size.height * .05,
                width: size.width * .20,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TensQuizScoreScreen(),
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorTheme.maincolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    "OK",
                    style: GlobalTextStyles.buttonText,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:gaming_app/core/constants/colors.dart';
// import 'package:gaming_app/core/constants/global_text_style.dart';
// import 'package:gaming_app/presentation/games/tens_quiz/score_screen/view/score_screen.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:http/http.dart' as http;

// class TenseQuizScreen extends StatefulWidget {
//   final String Level;
//   const TenseQuizScreen({super.key, required this.Level});

//   @override
//   State<TenseQuizScreen> createState() => _TenseQuizScreenState();
// }

// class _TenseQuizScreenState extends State<TenseQuizScreen> {
//   late List<String> questions;
//   @override
//   void initState() {
//     super.initState();
//     fetchQuestions(widget.level);
//   }

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.sizeOf(context);
//     return Scaffold(
//       appBar: AppBar(leading: Icon(null)),
//       body: SingleChildScrollView(
//         child: Center(
//             child: Column(
//           children: [
//             Text("WELCOME TO TENSE QUIZ", style: GlobalTextStyles.secondTittle),
//             SizedBox(
//               height: size.height * .09,
//             ),
//             Text("${questions != null ? questions[0]: ''}",
//                 style: GlobalTextStyles.subTitle3),
//             SizedBox(
//               height: size.height * .09,
//             ),
//             Container(
//                 width: size.width * .750,
//                 height: size.height * .25,
//                 decoration: BoxDecoration(
//                   color: ColorTheme.primarycolor,
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: TextField(
//                   style: TextStyle(color: ColorTheme.maincolor),
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderSide: BorderSide.none,
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       hintText: "Enter Your Answer",
//                       hintStyle:
//                           TextStyle(color: ColorTheme.lightgrey, fontSize: 15)),
//                 )),
//             SizedBox(
//               height: size.height * .09,
//             ),
//             Container(
//               height: size.height * .05,
//               width: size.width * .20,
//               child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.of(context).push(MaterialPageRoute(
//                         builder: (context) => const TensQuizScoreScreen()));
//                   },
//                   style: ElevatedButton.styleFrom(
//                       backgroundColor: ColorTheme.maincolor,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20))),
//                   child: Text(
//                     "OK",
//                     style: GlobalTextStyles.buttonText,
//                   )),
//             )
//           ],
//         )),
//       ),
//     );
//   }
// }

// void fetchQuestions(String level) async {
//   final response =
//       await http.get(Uri.parse('http://127.0.0.1:8000/TenseQuiz?level=$level'));
//   if (response.statusCode == 200) {
//     List<dynamic> data = jsonDecode(response.body);
//     List fetchQuestions = data.map((e) => e['questions']).toList();
//     setState(() {
//       questions = fetchQuestions;
//     });
//   }else {
//     throw Exception('Failed to fetch questions')
//   }
// }
