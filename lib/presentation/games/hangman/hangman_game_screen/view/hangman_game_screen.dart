import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/core/constants/global_text_style.dart';

class HangmanGameScreen extends StatefulWidget {

  final List<Map<String, String>> questions;

  HangmanGameScreen({required this.questions});

  @override
  _HangmanGameScreenState createState() => _HangmanGameScreenState();
}

class _HangmanGameScreenState extends State<HangmanGameScreen> {
  int currentQuestionIndex = 0;
  String currentAnswer = '';
  Set<String> guessedLetters = {};
  int incorrectGuesses = 0;
  int score = 0;

  @override
  void initState() {
    super.initState();
    loadNextQuestion();
  }

  void loadNextQuestion() {
    setState(() {
      currentAnswer = widget.questions[currentQuestionIndex]['answer']!;
      guessedLetters.clear();
      incorrectGuesses = 0;
    });
  }

  void guessLetter(String letter) {
    setState(() {
      guessedLetters.add(letter);
      if (!currentAnswer.contains(letter)) {
        incorrectGuesses++;
      }
      if (isGameWon() || isGameOver()) {
        if (isGameWon()) {
          score += 1;
        }
        showEndDialog(isGameWon());
      }
    });
  }

  bool isGameWon() {
    return currentAnswer.split('').every((letter) => guessedLetters.contains(letter));
  }

  bool isGameOver() {
    return incorrectGuesses >= 6;
  }

  void showEndDialog(bool won) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text(won ? 'You Won!' : 'Game Over'),
          content: Text(won
              ? 'Congratulations! You guessed the word correctly.'
              : 'The correct word was: $currentAnswer',style: TextStyle(color: Color(0xff67729D),),),
          actions: [
            TextButton(
              child: Text('Next'),
              onPressed: () {
                Navigator.of(context).pop();
                if (currentQuestionIndex < widget.questions.length - 1) {
                  setState(() {
                    currentQuestionIndex++;
                    loadNextQuestion();
                  });
                } else {
                  showFinalScore();
                }
              },
            ),
          ],
        );
      },
    );
  }

  void showFinalScore() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Game Completed'),
          content: Text('Your final score is: $score'),
          actions: <Widget>[
            TextButton(
              child: Text('Restart'),
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  currentQuestionIndex = 0;
                  score = 0;
                  loadNextQuestion();
                });
              },
            ),
            TextButton(
              child: Text('Change Difficulty'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget buildLetter(String letter) {
    bool isRevealed = guessedLetters.contains(letter);
    return Container(
      width: 30,
      height: 40,
      alignment: Alignment.center,
      margin: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Text(
        isRevealed ? letter : '',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget showWord() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: currentAnswer.split('').map((letter) => buildLetter(letter)).toList(),
    );
  }

  showKeyboard() {
    return GridView.count(
      crossAxisCount: 7,
      shrinkWrap: true,
      children: 'abcdefghijklmnopqrstuvwxyz'.split('').map((letter) {
        return InkWell(
          onTap: guessedLetters.contains(letter)
              ? null
              : () => guessLetter(letter),
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              color: guessedLetters.contains(letter) ? Colors.grey : Color(0xff67729D),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Text(
              letter.toUpperCase(),
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children:[
            if(currentQuestionIndex == 0)   // welcome message for only the first question
              Text(
                'Welcome to Hangman',
                style: GlobalTextStyles.secondTittle
              ),
            SizedBox(height: 30),
            Text(
              widget.questions[currentQuestionIndex]['question']!,
              style: GlobalTextStyles.subTitle3,
            ),
            SizedBox(height: 20),
            showWord(),
            SizedBox(height: 20),
            showKeyboard(),
            SizedBox(height: 20),
            Text(
              'Incorrect guesses: $incorrectGuesses',
              style: TextStyle(fontSize: 18, color: Colors.red),
            ),
            SizedBox(height: 20),
            Text(
              'Score: $score',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color:Color(0xff67729D) ),
            ),
          ],
        ),
      ),
    );
  }

}
