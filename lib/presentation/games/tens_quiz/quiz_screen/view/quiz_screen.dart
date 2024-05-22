import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/core/constants/global_text_style.dart';
import 'package:gaming_app/presentation/games/tens_quiz/score_screen/view/score_screen.dart';

class TenseQuizScreen extends StatefulWidget {
  final List<Map<String, dynamic>> questions;

  const TenseQuizScreen({Key? key, required this.questions}) : super(key: key);

  @override
  _TenseQuizScreenState createState() => _TenseQuizScreenState();
}

class _TenseQuizScreenState extends State<TenseQuizScreen> {
  late List<Map<String, dynamic>> shuffledQuestions;
  int currentQuestionIndex = 0;
  String userAnswer = '';
  String feedbackMessage = '';
  var i=1;
  int score=0;
  late var answer =TextEditingController();

  @override
  void initState() {
    super.initState();
    // Shuffle the questions
    shuffledQuestions = List.from(widget.questions)..shuffle();
  }

  void checkAnswer() {
    if (userAnswer.toLowerCase() ==
        shuffledQuestions[currentQuestionIndex]['answer'].toLowerCase()) {
      feedbackMessage = 'Correct!';
      score++;
    } else {
      feedbackMessage = "Wrong! The correct answer is '${shuffledQuestions[currentQuestionIndex]['answer']}'";
    }
    setState(() {
      currentQuestionIndex++;
      i++;
      userAnswer = '';
      answer.clear();
    });
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
                SizedBox(
                  height: size.height * .09,
                ),
                currentQuestionIndex < shuffledQuestions.length?
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "$i. ${shuffledQuestions[currentQuestionIndex]['question']}",
                          style: GlobalTextStyles.subTitle3,textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: size.width * .75,
                        height: 50,
                        decoration: BoxDecoration(
                          color: ColorTheme.primarycolor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          textInputAction: TextInputAction.next,
                          controller: answer,
                          onChanged: (value) {
                            userAnswer = value;
                          },
                          style: TextStyle(color: ColorTheme.maincolor),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              hintText: "Enter Your Answer",
                              hintStyle: TextStyle(
                                  color: ColorTheme.lightgrey, fontSize: 15)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      feedbackMessage == 'Correct!'?
                      Text(feedbackMessage, style: TextStyle(color: Colors.green)):
                      Text(feedbackMessage, style: TextStyle(color: Colors.red)),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Score: $score",
                              style: GlobalTextStyles.subTitle3,
                            ),
                            Container(
                              height: size.height * .05,
                              width: size.width * .20,
                              child: ElevatedButton(
                                  onPressed: () {
                                    if (currentQuestionIndex < shuffledQuestions.length) {
                                      checkAnswer();
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: ColorTheme.maincolor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20))),
                                  child: Text(
                                    "OK",
                                    style: GlobalTextStyles.buttonText,
                                  )),
                            ),
                          ],
                        ),
                      )
                    ],
                  ): Column(children: [Text("Quiz completed"),
                  SizedBox(height: 50),
                  Container(
                    height: size.height * .05,
                    width: size.width * .20,
                    child: ElevatedButton(
                        onPressed: () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(
                                builder: (context) =>
                                 TensQuizScoreScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorTheme.maincolor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: Text(
                          "OK",
                          style: GlobalTextStyles.buttonText,
                        )),
                  ),
                ],)
              ],
            )),
      ),
    );
  }
}
