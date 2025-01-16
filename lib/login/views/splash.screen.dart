import 'package:flutter/cupertino.dart';
import 'package:student/constant/colortheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student/login/views/signup.page.dart';

class SplashScreenc extends StatefulWidget {
  const SplashScreenc({super.key});

  @override
  State<SplashScreenc> createState() => _SplashScreencState();
}

class _SplashScreencState extends State<SplashScreenc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
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
                  width: 100,
                  height: 61.38,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('assets/logo.png'))),
                )
              ],
            )),
            new SizedBox(
              height: 100,
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Let's find the " + '"A"' + " with us",
                    style: GoogleFonts.exo(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  height: 20,
                ),
                Text("Please Sign in to view personalized recommendations",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.exo(
                      color: Color.fromARGB(255, 99, 109, 119),
                      fontSize: 18,
                    )),
                new SizedBox(
                  height: 95,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: Container(
                    width: 276,
                    // height: 61,
                    height: 50,
                    decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(025, 0, 0, 0),
                              spreadRadius: -2,
                              blurRadius: 32,
                              offset: Offset(0, 14))
                        ]),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style:
                            GoogleFonts.exo(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Skip",
                  style: GoogleFonts.exo(
                      color: buttonColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
