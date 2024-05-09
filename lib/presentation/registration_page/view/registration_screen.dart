import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/presentation/login_screen/view/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final phonecontroller = TextEditingController();
  final namecontroller = TextEditingController();
  final econtroller = TextEditingController();
  final pcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();
  late SharedPreferences preferences;
  late bool newuser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorTheme.secondarycolor,
        body: SingleChildScrollView(
            child: Form(
          key: formkey,
          child: Center(
              child: Column(children: [
            const SizedBox(
              height: 150,
            ),
            Text(
              "Welcome To SpeakUp",
              style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  color: ColorTheme.maincolor,
                  fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35, top: 100),
              child: TextFormField(
                controller: namecontroller,
                textInputAction: TextInputAction.next,
                validator: (name) {
                  if (name!.isEmpty) {
                    return "Enter a valid Username";
                  } else {
                    return null;
                  }
                },
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
                controller: econtroller,
                textInputAction: TextInputAction.next,
                validator: (email) {
                  if (email!.isEmpty || !email.contains('@')) {
                    return "Enter a valid E mail ID";
                  } else {
                    return null;
                  }
                },
                style: TextStyle(color: ColorTheme.maincolor),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: ColorTheme.maincolor,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Email',
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
                controller: phonecontroller,
                textInputAction: TextInputAction.next,
                validator: (Phone) {
                  if (Phone?.length == 10 && int.tryParse(Phone!) != null) {
                    return null;
                  } else {
                    return "Enter a valid Mobile Number";
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.phone,
                    color: ColorTheme.maincolor,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Phone Number',
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide.none),
                ),
                style: TextStyle(color: ColorTheme.maincolor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35, top: 30),
              child: TextFormField(
                controller: pcontroller,
                textInputAction: TextInputAction.next,
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return "Enter Minimum 6 Char";
                  } else {
                    return null;
                  }
                },
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
                  preferences = await SharedPreferences.getInstance();
                  var isValid = formkey.currentState!.validate();
                  int Phone = int.parse(phonecontroller.text);
                  String email = econtroller.text;
                  String pword = pcontroller.text;
                  String name = namecontroller.text;
                  List<String>? userListJson =
                      preferences.getStringList('users');
                  List<User> userList = userListJson
                          ?.map((userJson) =>
                              User.fromJson(json.decode(userJson)))
                          .toList() ??
                      [];
                  if (userList.any((user) => user.name == name)) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        backgroundColor: Colors.red,
                        content: Text("Username already exists")));
                  } else {
                    if (isValid == true) {
                      addUserToSharedPreferences(
                          User(name, email, Phone, pword));
                      preferences.setBool("newuser", false);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                      namecontroller.text = "";
                      phonecontroller.text = "";
                      econtroller.text = "";
                      pcontroller.text = "";
                    }
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorTheme.maincolor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7))),
                child: Text(
                  "Register",
                  style: TextStyle(
                    color: ColorTheme.primarycolor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 130),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "Already  have account ?  ",
                      style: GoogleFonts.lato(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Colors.black),
                    ),
                    TextSpan(
                      text: " Log in ",
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
          ])),
        )));
  }

  addUserToSharedPreferences(User user) async {
    final preferences = await SharedPreferences.getInstance();
    List<String> userList = preferences.getStringList('users') ?? [];
    userList.add(json.encode(user.toJson()));
    await preferences.setStringList('users', userList);
  }
}

class User {
  final String name;
  final String email;
  final int phone;
  final String pword;

  User(this.name, this.email, this.phone, this.pword);

  Map<String, dynamic> toJson() {
    return {'name': name, 'email': email, 'phone': phone, 'password': pword};
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(json['name'], json['email'], json['phone'], json['password']);
  }
}
