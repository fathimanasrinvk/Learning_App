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
  final econtroller = TextEditingController();
  final pcontroller = TextEditingController();
  final formkey=GlobalKey<FormState>();
  late SharedPreferences preferences;
  late String username;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorTheme.secondarycolor,
        body: SingleChildScrollView(
            child: Center(
                child: Column(
                    children: [
                      SizedBox(height: 150,),
                      Text("Welcome To SpeakUp",style: GoogleFonts.nunito(fontWeight: FontWeight.w700,color: ColorTheme.maincolor,fontSize:24),),
                      Padding(
                        padding: const EdgeInsets.only(left: 35,right: 35,top: 100),
                        child: TextFormField(
                          style: TextStyle(color: ColorTheme.maincolor),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email,color: ColorTheme.maincolor,),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Email',

                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                            border:OutlineInputBorder(borderRadius: BorderRadius.circular(7),
                                borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35,right: 35,top: 30),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone,color: ColorTheme.maincolor,),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Phone Number',
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                            border:OutlineInputBorder(borderRadius: BorderRadius.circular(7),
                                borderSide: BorderSide.none),
                          ),
                          style: TextStyle(color: ColorTheme.maincolor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35,right: 35,top: 30),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock,color: ColorTheme.maincolor,),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Password',
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                            border:OutlineInputBorder(borderRadius: BorderRadius.circular(7),
                                borderSide: BorderSide.none),
                          ),
                          style: TextStyle(color: ColorTheme.maincolor),
                        ),
                      ),

                      SizedBox(height: 40,),
                      Container(width: 250,
                        decoration: BoxDecoration(
                            color: ColorTheme.maincolor,
                            borderRadius: BorderRadius.circular(7)

                        ),
                        child: ElevatedButton(
                          onPressed: () {
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: ColorTheme.maincolor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7))),
                          child: Text(
                            "Register",
                            style: TextStyle(
                              color: ColorTheme.primarycolor, ),
                          ),
                        ),
                      ),

                      SizedBox(height: 200),
                      TextButton(onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginScreen()));

                      },
                        child:RichText( text: TextSpan( children: <TextSpan>[
                          TextSpan( text: "Already  have account ?  ",style: GoogleFonts.lato(
                              decoration: TextDecoration.none, fontSize: 14,color: Colors.black),),
                          TextSpan( text: " Log in ",style: GoogleFonts.lato(color: ColorTheme.maincolor,
                              decoration: TextDecoration.none,fontSize: 18, fontWeight: FontWeight.bold),

                          )],
                        ),
                        ),
                      )
                    ] ))));
  }
}
