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
  List<Map<String, String>>? questions;

  @override
  void initState() {
    super.initState();
    fetchQuestions(widget.level);
  }

  Future<void> fetchQuestions(String level) async {
    try {
      final response = await http.post(
        Uri.parse('http://10.11.0.112:8000/TenseQuiz/'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'level': level,
        }),
      );

      if (response.statusCode == 200) {
        List<dynamic> data = jsonDecode(response.body);
        List<Map<String, String>> fetchedQuestions = data.map((e) => {
          "question": e['question'].toString(),
          "answer": e['answer'].toString()
        }).toList();
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
                for (int i = 0; i < questions!.length; i++)
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
                    child: Column(
                      children: [
                        Text("Question ${i + 1}: ${questions![i]['question']}", style: GlobalTextStyles.subTitle3),
                        SizedBox(height: size.height * .02),
                        Container(
                          width: size.width * .750,
                          height: size.height * .15,
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
                      ],
                    ),
                  ),
              if (questions == null)
                CircularProgressIndicator(),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
