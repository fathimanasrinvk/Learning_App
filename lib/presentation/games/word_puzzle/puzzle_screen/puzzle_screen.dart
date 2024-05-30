import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/core/constants/global_text_style.dart';
import 'package:gaming_app/presentation/games/word_puzzle/score_screen/view/score_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../word_puzzle datas/database.dart';

class PuzzleScreen extends StatefulWidget {
  List<Map<String, String>> words;
   PuzzleScreen({super.key, required this.words});

  @override
  State<PuzzleScreen> createState() => _PuzzleScreenState();
}

class _PuzzleScreenState extends State<PuzzleScreen> {
  int currentIndex = 0;
  final TextEditingController _controller = TextEditingController();
  String feedback = '';

  void checkAnswer() {
    if (_controller.text.trim().toLowerCase() ==
        widget.words[currentIndex]['original']) {
      setState(() {
        feedback = 'Correct!';
        currentIndex = (currentIndex + 1) ;
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
                    image:
                        AssetImage(widget.words[currentIndex]['image'] ?? ""),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(height: size.height * 0.04),
              Text("Clue"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: Text(widget.words[currentIndex]['clue'].toString(),
                      style: GoogleFonts.poppins(
                          fontSize: 15, color: ColorTheme.red)),
                ),
              ),
              SizedBox(height: size.height * 0.04),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    5, 0, 5, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: widget.words[currentIndex]['shuffled']!
                      .split('')
                      .map((letter) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 3.0),
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 10),
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
                      if (currentIndex == 9) {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) =>
                                 WordPuzzleScoreScreen()));
                      }else{
                        checkAnswer();
                      }
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



// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final List<Map<String, String>> words = [
//     {'original': 'candle', 'shuffled': 'nalced'},
//     {'original': 'basket', 'shuffled': 'skteba'},
//     {'original': 'bridge', 'shuffled': 'dbgier'},
//     {'original': 'forest', 'shuffled': 'fsreto'},
//     {'original': 'laptop', 'shuffled': 'pltaop'},
//     {'original': 'puzzle', 'shuffled': 'zlpeuz'},
//     {'original': 'shadow', 'shuffled': 'wdasoh'},
//     {'original': 'winter', 'shuffled': 'neiwtr'},
//     {'original': 'picnic', 'shuffled': 'cinpic'},
//     {'original': 'castle', 'shuffled': 'tslcea'},
//   ];

//   int currentIndex = 0;
//   final TextEditingController _controller = TextEditingController();
//   String feedback = '';

//   void checkAnswer() {
//     if (_controller.text == words[currentIndex]['original']) {
//       setState(() {
//         feedback = 'Correct!';
//         currentIndex = (currentIndex + 1) % words.length;
//         _controller.clear();
//       });
//     } else {
//       setState(() {
//         feedback = 'Try again!';
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Word Shuffle Game'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Text(
//               'Unscramble the word:',
//               style: TextStyle(fontSize: 24),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: words[currentIndex]['shuffled']!.split('').map((letter) {
//                 return Container(
//                   margin: EdgeInsets.symmetric(horizontal: 4.0),
//                   padding: EdgeInsets.all(8.0),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.blue),
//                     borderRadius: BorderRadius.circular(8.0),
//                   ),
//                   child: Text(
//                     letter,
//                     style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
//                   ),
//                 );
//               }).toList(),
//             ),
//             SizedBox(height: 20),
//             TextField(
//               controller: _controller,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Your answer',
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: checkAnswer,
//               child: Text('Submit'),
//             ),
//             SizedBox(height: 20),
//             Text(
//               feedback,
//               style: TextStyle(fontSize: 24, color: Colors.red),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

