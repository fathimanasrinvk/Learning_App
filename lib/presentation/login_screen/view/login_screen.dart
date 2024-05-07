import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/presentation/registration_page/view/registration_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../home_screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final namecontroller = TextEditingController();
  final pcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();
  late SharedPreferences preferences;
  late bool newuser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorTheme.secondarycolor,
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: [
          const SizedBox(
            height: 150,
          ),
          Text(
            "Welcome Back !!",
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.w700,
                color: ColorTheme.maincolor,
                fontSize: 24),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, right: 35, top: 100),
            child: TextFormField(
              controller: namecontroller,
              style: TextStyle(color: ColorTheme.maincolor),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                  color: ColorTheme.maincolor,
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Username',
                contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide.none),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, right: 35, top: 30),
            child: TextFormField(
              controller: pcontroller,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: ColorTheme.maincolor,
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Password',
                contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide.none),
              ),
              style: TextStyle(color: ColorTheme.maincolor),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            width: 250,
            decoration: BoxDecoration(
                color: ColorTheme.maincolor,
                borderRadius: BorderRadius.circular(7)),
            child: ElevatedButton(
              onPressed: () async {
                SharedPreferences preferences =
                    await SharedPreferences.getInstance();
                List<String>? userListJson = preferences.getStringList('users');
                if (userListJson != null && userListJson.isNotEmpty) {
                  List<User> userList = userListJson
                      .map((userJson) => User.fromJson(json.decode(userJson)))
                      .toList();
                  String enteredName = namecontroller.text;
                  String enteredPassword = pcontroller.text;
                  User? user;
                  try {
                    user =
                        userList.firstWhere((user) => user.name == enteredName);
                  } catch (e) {
                    user = null;
                  }
                  if (user != null && user.pword == enteredPassword) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HomeScreen(name: enteredName)));
                    namecontroller.text = "";
                    pcontroller.text = "";
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        backgroundColor: Colors.red,
                        content: Text("Username or password is incorrect")));
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      backgroundColor: Colors.red,
                      content: Text("No users registered yet")));
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: ColorTheme.maincolor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7))),
              child: Text(
                "Login",
                style: TextStyle(
                  color: ColorTheme.primarycolor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 280),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => RegistrationScreen()));
            },
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "Don't have account ?  ",
                    style: GoogleFonts.lato(
                        decoration: TextDecoration.none,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: " Sign Up",
                    style: GoogleFonts.lato(
                        color: ColorTheme.maincolor,
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ]))));
  }
}
