import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/core/constants/global_text_style.dart';
import 'package:gaming_app/presentation/games/boggle/game_data/boogle_game_data.dart';
import 'package:gaming_app/presentation/games/boggle/level_screen/view/level_screen.dart';
import 'package:gaming_app/presentation/games/boggle/score_screen/boggle_score_screen.dart';

class BoggleGameScreen extends StatefulWidget {
  final String level;
  BoggleGameScreen({required this.level});

  @override
  State<BoggleGameScreen> createState() => _BoggleGameScreenState();
}

class _BoggleGameScreenState extends State<BoggleGameScreen> {
  late BoggleGameData gameData;
  final TextEditingController controller = TextEditingController();
  final List<String> correctWords =
      []; // to store the words the user correctly guessed
  final List<String> userTypeWords =
      []; // used to store the words that the user has typed in the game
  int maxWords =
      0; // used to store the maximum number of correct words that the user can enter for the current level of the game
  int maxLettersInRowOrColumn =
      0; // used to store the maximum number of letters that can be displayed in a single row or column of the grid in the game
  String hintText = '';
  final double letterContainerHeight = 30;
  final double letterContainerWidth = 30;

  // to retrieve the data from selected level
  @override
  void initState() {
    super.initState();
    gameData = gameLevels[widget.level]!;
    switch (widget.level) {
      case 'easy':
        maxWords = 6;
        hintText = 'Write 6 Words Using These Letters';
        break;
      case 'medium':
        maxWords = 9;
        hintText = 'Write 9 Words Using These Letters';
        break;
      case 'hard':
        maxWords = 12;
        hintText = 'Write 12 Words Using These Letters';
        break;
    }
    maxLettersInRowOrColumn = (gameData.letters.length / 3).ceil();
  }

  void checkWord() {
    final word = controller.text.trim().toUpperCase();
    if (gameData.words.contains(word) && !correctWords.contains(word)) {
      setState(() {
        correctWords.add(word);
        userTypeWords.add(word);
        controller.clear();
        if (correctWords.length >= maxWords) {
          FocusScope.of(context).unfocus(); // dismiss the keyboard
        }
      });
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Incorrect Word')));
    }
  }

  void navigateToScore() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BoggleScoreScreen()));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => LevelScreenBoggle()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: ColorTheme.maincolor,
          ),
        ),
        centerTitle: true,
        title: Text(
          "WELCOME TO BOGGLE GAME",
          style: GlobalTextStyles.subTitle2,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: size.width * 0.1,
            right: size.width * 0.1,
            top: 8.0,
            bottom: 8.0),
        child: Column(
          children: [
            Text(
              hintText,
              style: GlobalTextStyles.subTitle3,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: maxLettersInRowOrColumn,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    childAspectRatio: 2.5),
                itemCount: gameData.letters.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: letterContainerWidth,
                    height: letterContainerHeight,
                    decoration: BoxDecoration(
                      color: ColorTheme.maincolor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        gameData.letters[index],
                        style: GlobalTextStyles.subTitle4,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            if (correctWords.length <
                maxWords) // Show the text field only if the word limit is not reached
              TextField(
                controller: controller,
                decoration: InputDecoration(
                    labelText: 'Enter Word',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorTheme.maincolor))),
              ),
            SizedBox(
              height: size.height * .05,
            ),
            MaterialButton(
              shape: StadiumBorder(),
              color: ColorTheme.maincolor,
              onPressed:
                  correctWords.length < maxWords ? checkWord : navigateToScore,
              child: Text(correctWords.length < maxWords ? 'Check Word' : 'OK',
                  style: GlobalTextStyles.buttonText),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: correctWords.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(
                    correctWords[index],
                    style: GlobalTextStyles.subTitle3,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
