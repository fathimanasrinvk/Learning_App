import 'package:flutter/material.dart';
import 'package:gaming_app/presentation/games/gk/gk_data/gk_data.dart';
import 'package:gaming_app/presentation/games/gk/score_screen/view/score_screen.dart';
import 'difficulty.dart'; // Import the Difficulty enum

class QuizProvider extends ChangeNotifier {
  List<GkQuestion> questions = [];
  int currentQuestionIndex = 0;
  String? selectedOption;
  int score = 0;

  bool get isAnswered => selectedOption != null;
  bool get isCorrect => isAnswered && selectedOption == questions[currentQuestionIndex].options.entries.firstWhere((entry) => entry.value == true).key;

  bool get isQuizFinished => currentQuestionIndex >= questions.length - 1;

  void selectOption(String option) {
    if (isAnswered) return;

    selectedOption = option;
    bool isCorrect = selectedOption == questions[currentQuestionIndex].options.entries.firstWhere((entry) => entry.value == true).key;

    if (!isCorrect) {
      questions[currentQuestionIndex].selectedAnswer = selectedOption;
    }

    if (isCorrect) {
      score++;
    }

    notifyListeners();
  }

  void nextQuestion(BuildContext context) {
    if (isQuizFinished) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GkQuizScoreScreen(),
        ),
      );
      return;
    }

    selectedOption = null;
    currentQuestionIndex++;
    notifyListeners();
  }

  void selectDifficulty(Difficulty difficulty) {
    switch (difficulty) {
      case Difficulty.easy:
        questions = easyQuestions;
        break;
      case Difficulty.medium:
        questions = mediumQuestions;
        break;
      case Difficulty.hard:
        questions = hardQuestions;
        break;
    }
    currentQuestionIndex = 0;
    selectedOption = null;
    score = 0;
    notifyListeners();
  }
}
