import 'package:flutter/material.dart';
import 'package:gaming_app/presentation/games/gk/gk_data/gk_data.dart';
import 'package:gaming_app/presentation/games/gk/score_screen/view/score_screen.dart';
import 'difficulty.dart'; // Import the Difficulty enum


class QuizProvider extends ChangeNotifier {
  List<GkQuestion> _questions = [];
  int _currentQuestionIndex = 0;
  String? _selectedOption;
  bool _isAnswered = false;
  bool _isCorrect = false;
  int _score = 0;

  List<GkQuestion> get questions => _questions;
  int get currentQuestionIndex => _currentQuestionIndex;
  String? get selectedOption => _selectedOption;
  bool get isAnswered => _isAnswered;
  bool get isCorrect => _isCorrect;
  int get score => _score;

  bool get isQuizFinished => _currentQuestionIndex >= _questions.length - 1;

  void selectOption(String option) {
    if (_isAnswered) return;

    _selectedOption = option;
    _isAnswered = true;
    _isCorrect = _selectedOption == _questions[_currentQuestionIndex].answer;

    _questions[_currentQuestionIndex].selectedAnswer = option;
    _questions[_currentQuestionIndex].answerdCorrectly = _isCorrect;

    if (_isCorrect) {
      _score++;
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

    _selectedOption = null;
    _isAnswered = false;
    _isCorrect = false;
    _currentQuestionIndex++;
    notifyListeners();
  }

  void selectDifficulty(Difficulty difficulty) {
    switch (difficulty) {
      case Difficulty.easy:
        _questions = easyQuestions;
        break;
      case Difficulty.medium:
        _questions = mediumQuestions;
        break;
      case Difficulty.hard:
        _questions = hardQuestions;
        break;
    }
    _currentQuestionIndex = 0;
    _selectedOption = null;
    _isAnswered = false;
    _isCorrect = false;
    _score = 0;
    notifyListeners();
  }
}
