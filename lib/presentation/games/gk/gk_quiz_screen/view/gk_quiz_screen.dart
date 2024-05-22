import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/core/constants/global_text_style.dart';
import 'package:gaming_app/presentation/games/gk/common/controller.dart';
import 'package:provider/provider.dart';

import '../../level_screen/view/level_screen.dart';
import '../../score_screen/view/score_screen.dart';

class GkQuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: ColorTheme.maincolor,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => LevelScreenGK()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                "WELCOME TO GK QUIZ",
                style: GlobalTextStyles.secondTittle,
              ),
              SizedBox(height: size.height * 0.06),
              Consumer<QuizProvider>(
                builder: (context, quizProvider, child) {
                  final GkQuestion = quizProvider.questions[quizProvider.currentQuestionIndex];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          'Question ${quizProvider.currentQuestionIndex + 1}',
                          style: GlobalTextStyles.subTitle3,
                        ),
                      ),
                      Center(
                        child: Text(
                          GkQuestion.question,
                          style: GlobalTextStyles.subTitle3,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: size.height * 0.06),
                      ...GkQuestion.options.map((option) {
                        Color? optionColor;
                        if (quizProvider.isAnswered) {
                          if (option == GkQuestion.selectedAnswer) {
                            optionColor = GkQuestion.answerdCorrectly ? ColorTheme.green : ColorTheme.red;
                          }
                        }
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                          child: GestureDetector(
                            onTap: () {
                              quizProvider.selectOption(option);
                              if (quizProvider.isQuizFinished) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => GkQuizScoreScreen(),
                                  ),
                                );
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
                        child: Container(
                          height: size.height * .05,
                          width: size.width * .20,
                          child: ElevatedButton(
                            onPressed: () {
                              quizProvider.nextQuestion(context);
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
