import 'package:flutter/material.dart';
import 'package:gaming_app/core/constants/colors.dart';
import 'package:gaming_app/presentation/registration_page/view/registration_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/onboarding/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: IntroductionScreen(
          globalBackgroundColor: Colors.transparent,
          pages: [
            PageViewModel(
                title: "Learn More",
                body:
                    "Discover the joy of learning English with our app, where each word learned opens new doors to opportunities and connections.",
                image: Image.asset("assets/onboarding/onboarding1.png"),
                decoration: PageDecoration(
                    titleTextStyle: GoogleFonts.poppins(
                        color: ColorTheme.maincolor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    bodyTextStyle: GoogleFonts.poppins(
                      color: ColorTheme.maincolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ))),
            PageViewModel(
                title: "It’s gamified!",
                body:
                    "Level up your English with our immersive games, designed to strengthen your language skills and make learning a rewarding adventure.",
                image: Image.asset("assets/onboarding/onboarding2.png"),
                decoration: PageDecoration(
                    titleTextStyle: GoogleFonts.poppins(
                        color: ColorTheme.maincolor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    bodyTextStyle: GoogleFonts.poppins(
                        color: ColorTheme.maincolor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold))),
            PageViewModel(
                title: "Take learning beyond the classroom walls",
                body:
                    "Extend your learning journey with us beyond traditional classroom boundaries.",
                image: Image.asset("assets/onboarding/onboarding3.png"),
                decoration: PageDecoration(
                    titleTextStyle: GoogleFonts.poppins(
                        color: ColorTheme.maincolor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    bodyTextStyle: GoogleFonts.poppins(
                      color: ColorTheme.maincolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ))),
          ],
          next: const Text(""),
          showSkipButton: true,
          skip: Text(
            "Skip",
            style: TextStyle(
                color: ColorTheme.maincolor,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          done: Text(
            "Start",
            style: TextStyle(
                color: ColorTheme.maincolor,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          onDone: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => RegistrationScreen())),
          onSkip: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => RegistrationScreen())),
          dotsDecorator: DotsDecorator(
            size: Size(10, 10),
            activeSize: Size(30, 10),
            color: ColorTheme.secondarycolor,
            activeColor: ColorTheme.maincolor,
            activeShape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
          ),
        ),
      ),
    );
  }
}
