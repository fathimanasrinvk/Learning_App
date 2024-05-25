import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/core/constants/global_text_style.dart';
import 'package:gaming_app/presentation/games/gk/level_screen/view/level_screen.dart';
import 'package:gaming_app/presentation/games/gk/score_screen/view/score_screen.dart';
import 'package:provider/provider.dart';
import 'package:gaming_app/presentation/games/gk/common/controller.dart';

class GkQuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: ColorTheme.maincolor,
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => LevelScreenGK()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text('WELCOME TO GK QUIZ', style: GlobalTextStyles.secondTittle),
              SizedBox(height: size.height * 0.05),
              Consumer<QuizProvider>(
                builder: (context, quizProvider, child) {
                  final question =
                      quizProvider.questions[quizProvider.currentQuestionIndex];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                            'Question ${quizProvider.currentQuestionIndex + 1}',
                            style: GlobalTextStyles.subTitle3),
                      ),
                      Center(
                        child: Text(
                          question.question,
                          style: GlobalTextStyles.subTitle3,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: size.height * 0.06),
                      ...question.options.keys.map((option) {
                        Color? optionColor;

                        if (quizProvider.isAnswered) {
                          if (option == question.selectedAnswer) {
                            optionColor = quizProvider.isCorrect
                                ? Colors.green
                                : Colors.red;
                          } else if (option ==
                              question.options.entries
                                  .firstWhere((entry) => entry.value == true)
                                  .key) {
                            optionColor = Colors.green;
                          }
                        }

                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: GestureDetector(
                            onTap: () {
                              quizProvider.selectOption(option);
                              if (quizProvider.isQuizFinished) {
                                Future.delayed(Duration(seconds: 3), () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => GkQuizScoreScreen(),
                                    ),
                                  );
                                });
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: optionColor ?? Colors.white,
                                border: Border.all(color: ColorTheme.maincolor),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Center(
                                child: Text(option),
                              ),
                              height: 60,
                            ),
                          ),
                        );
                      }).toList(),
                      SizedBox(height: size.height * 0.06),
                      Center(
                        child:
                         ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: ColorTheme.maincolor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {
                            quizProvider.nextQuestion(context);
                          },
                          child: Text(
                            'OK',
                            style: TextStyle(color: ColorTheme.white),
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
