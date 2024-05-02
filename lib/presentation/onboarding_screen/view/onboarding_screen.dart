import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';



class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: ColorTheme.maincolor, // Set the background color for the entire screen here
      pages: [
        PageViewModel(
          titleWidget: Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Image.asset("assets/1st.png",height: 280,width: 280,fit: BoxFit.contain,),
          ),
          body: "Manage Your Task",
          decoration: PageDecoration(
            bodyTextStyle: GoogleFonts.anton(color: ColorTheme.primarycolor,fontSize: 25,)
    )
          ),


        PageViewModel(
            titleWidget: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Image.asset("assets/3.png",height: 380,width: 380,fit: BoxFit.contain,),
            ),
            body: "Create Daily Routine",
            decoration: PageDecoration(
                bodyTextStyle: GoogleFonts.anton(color: ColorTheme.secondarycolor,fontSize: 25,)
            )
        ),

        PageViewModel(
            titleWidget: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Image.asset("assets/4.png",height: 380,width: 380,fit: BoxFit.contain,),
            ),
            body: "Organize Your Task",
            decoration: PageDecoration(
                bodyTextStyle: GoogleFonts.anton(color: ColorTheme.secondarycolor,fontSize: 25,)
            )
        ),

      ],
      next: Text(""),
      showSkipButton: true,
      skip: Text("Skip",style: TextStyle(color: ColorTheme.secondarycolor ,fontSize: 15),),
      done: Text("Lets's start",style: TextStyle(color: ColorTheme.secondarycolor,fontSize: 15),), // Specify the "Done" button widget here
      // onDone: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Splas_Note())),
      // onSkip: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Splas_Note())),
      dotsDecorator: DotsDecorator(
        size: Size(10, 10),
        activeSize: Size(30, 10),
        color:  Colors.grey,
        activeColor:  ColorTheme.secondarycolor,
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
      ),
    );
  }
}
