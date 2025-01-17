import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student/constant/colortheme.dart';
import 'package:student/constant/constentsize.dart';
import 'package:student/login/views/signup.page.dart';

class SplashScreenc extends StatefulWidget {
  const SplashScreenc({super.key});

  @override
  State<SplashScreenc> createState() => _SplashScreencState();
}

class _SplashScreencState extends State<SplashScreenc> {
  @override
  Widget build(BuildContext context) {
    // Screen dimensions
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    // Scaling factors
    double heightScale = screenHeight / figmaHeight;
    double widthScale = screenWidth / figmaWidth;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100 * widthScale,
                      height: 61.38 * heightScale,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('assets/logo.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50 * heightScale),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Let's find the " + '"A"' + " with us",
                      style: GoogleFonts.exo(
                        color: Colors.black,
                        fontSize: 20 * widthScale,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 20 * heightScale),
                    Text(
                      "Please Sign in to view personalized recommendations",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.exo(
                        color: const Color.fromARGB(255, 99, 109, 119),
                        fontSize: 18 * widthScale,
                      ),
                    ),
                    SizedBox(height: 50 * heightScale),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                      child: Container(
                        width: 276 * widthScale,
                        height: 50 * heightScale,
                        decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(25, 0, 0, 0),
                              spreadRadius: -2,
                              blurRadius: 32,
                              offset: const Offset(0, 14),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: GoogleFonts.exo(
                              color: Colors.white,
                              fontSize: 20 * widthScale,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30 * heightScale),
                    Text(
                      "Skip",
                      style: GoogleFonts.exo(
                        color: buttonColor,
                        fontSize: 18 * widthScale,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
