import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/core/constants/database/database.dart';
import 'package:gaming_app/core/constants/global_text_style.dart';
import 'package:gaming_app/presentation/games/word_puzzle/score_screen/view/score_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class PuzzleHardScreen extends StatefulWidget {
  const PuzzleHardScreen({super.key});

  @override
  State<PuzzleHardScreen> createState() => _PuzzleHardScreenState();
}

class _PuzzleHardScreenState extends State<PuzzleHardScreen> {
  int currentIndex = 0;
  final TextEditingController _controller = TextEditingController();
  String feedback = '';

  void checkAnswer() {
    if (_controller.text.trim().toLowerCase() ==
        DbData.mediumWords[currentIndex]['original']) {
      setState(() {
        feedback = 'Correct!';
        currentIndex = (currentIndex + 1) % DbData.mediumWords.length;
        _controller.clear();
      });
    } else {
      setState(() {
        feedback = 'Try again!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(null),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text("WELCOME TO WORD PUZZLE",
                  style: GlobalTextStyles.secondTittle),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "${currentIndex + 1} / 10",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        DbData.mediumWords[currentIndex]['image'] ?? ""),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(height: size.height * 0.04),
              Text("Clue"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: Text(
                      DbData.mediumWords[currentIndex]['clue'].toString(),
                      style: GoogleFonts.poppins(
                          fontSize: 15, color: ColorTheme.red)),
                ),
              ),
              SizedBox(height: size.height * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: DbData.mediumWords[currentIndex]['shuffled']!
                    .split('')
                    .map((letter) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                        color: ColorTheme.maincolor,
                        borderRadius: BorderRadius.circular(12)),
                    child: Text(
                      letter,
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(height: size.height * 0.01),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    size.width * 0.2, 0, size.width * 0.2, 0),
                child: TextField(
                  controller: _controller,
                  style: TextStyle(color: ColorTheme.maincolor),
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              SizedBox(height: size.height * 0.05),
              SizedBox(
                child: ElevatedButton(
                    onPressed: () {
                      checkAnswer();

                      if (currentIndex > 9) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const WordPuzzleScoreScreen()));
                      }
                      setState(() {});
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorTheme.maincolor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: Text("Check", style: GlobalTextStyles.buttonText)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                feedback,
                style: TextStyle(
                    fontSize: 24,
                    color: feedback == 'Correct!' ? Colors.green : Colors.red),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
