import 'dart:io';
import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/core/constants/global_text_style.dart';
import 'package:path_provider/path_provider.dart';
import '../../alphabet_screen/view/alphabet_screen.dart';
import '../../game_screen/view/game_screen.dart';
import '../../registration_page/view/registration_screen.dart';
import '../../translation_screen/view/translation_screen.dart';
import '../../word_screen/view/word_screen.dart';

class HomeScreen extends StatefulWidget {


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _name = '';

  @override
  void initState() {
    super.initState();
    _loadName();
  }

  Future<String> _readName() async {
    try {
      final file = await _getLocalFile();
      String name = await file.readAsString();
      return name;
    } catch (e) {
      return '';
    }
  }

  Future<File> _getLocalFile() async {
    final directory = await getApplicationDocumentsDirectory();
    return File('${directory.path}/name.txt');
  }

  Future<void> _loadName() async {
    String name = await _readName();
    setState(() {
      _name = name;
    });
  }
  @override
  Widget build(BuildContext context) {
    var names = [
      'START WITH ALPHABETS',
      'LEARN WITH WORDS',
      'LEARN WITH GAMES',
      'TRANSLATION'
    ];
    var screen = [
      AlphabetScreen(),
      WordScreen(),
      GameScreen(),
      TranslationScreen()
    ];
    double size = constantsize(context);
    return Scaffold(
        body: Stack(children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              "assets/images/home screen background.PNG",
              fit: BoxFit.fill,
            ),
          ),
          Scaffold(
              backgroundColor: Colors.transparent,
              body: CustomScrollView(slivers: [
                SliverList(
                    delegate: SliverChildListDelegate([
                  SizedBox(height: size * 35),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start
                        ,children: [
                          Padding(
                            padding: EdgeInsets.only(left: size * 45),
                            child: Container(width: size*210,
                              alignment: Alignment.centerLeft,
                              child: Text("Hi, 👋 $_name",maxLines: 1,overflow: TextOverflow.ellipsis,
                                  style: GlobalTextStyles.subTitle3),
                            ),
                          ),
                          Padding(
                              padding:
                                  EdgeInsets.only(left: size * 45),
                              child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Let’s start learning!",
                                      style: GlobalTextStyles.subTitle1))),
                        ],
                      ),
                      Padding(
                        padding:  EdgeInsets.only(right: size*20),
                        child: ElevatedButton(onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
                          RegistrationScreen()));
                        }, child: Text("LogOut")),
                      )
                    ],
                  ),
                  SizedBox(height: size * 65)
                ])),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.fromLTRB(
                            size * 20, size * 20, size * 20, 0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => screen[index],
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: size * 10,
                              bottom: size * 10,
                              left: size * 25,
                              right: size * 25,
                            ),
                            child: Container(
                              height: size * 83,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xFFD9E1FF),
                                borderRadius: BorderRadius.circular(size * 5),
                              ),
                              child: Center(
                                child: Text(
                                  names[index],
                                  style: GlobalTextStyles.secondTittle,
                                  // style: GoogleFonts.passionOne(
                                  //   decoration: TextDecoration.none,
                                  //   fontSize: size * 30,
                                  //   color: ColorTheme.maincolor,
                                  // ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    childCount: 4,
                  ),
                ),
              ]))
        ]));
  }
}

