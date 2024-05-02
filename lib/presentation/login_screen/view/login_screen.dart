import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/presentation/registration_page/view/registration.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginScreen extends StatelessWidget {
  final econtroller = TextEditingController();
  final pcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: ColorTheme.secondarycolor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 150,),
              Text("Welcome Back !!",style: GoogleFonts.nunito(fontWeight: FontWeight.w700,color: ColorTheme.maincolor,fontSize:24),),
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
                    "Login",
                    style: TextStyle(
                        color: ColorTheme.primarycolor, ),
                  ),
                ),
              ),

                SizedBox(height: 280),
    TextButton(onPressed: () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>RegistrationScreen()));
    },
    child:RichText( text: TextSpan( children: <TextSpan>[
    TextSpan( text: "Don't have account ?  ",style: GoogleFonts.lato(
    decoration: TextDecoration.none, fontSize: 14,color: Colors.black),),
    TextSpan( text: " Sign Up",style: GoogleFonts.lato(color: ColorTheme.maincolor,
    decoration: TextDecoration.none,fontSize: 18, fontWeight: FontWeight.bold),

    )],
          ),
        ),
      )
    ] ))));
  }
}
