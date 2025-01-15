import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student/constant/colortheme.dart';
import 'package:student/login/views/signin.page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                "Welcome! \n Sign up to continue!",
                textAlign: TextAlign.center,
                style: GoogleFonts.plusJakartaSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 26),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color.fromARGB(255, 237, 238, 240)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                              image: AssetImage('assets/googlelogo.png'))),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Sign Up with Google",
                      style: GoogleFonts.plusJakartaSans(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 40,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color.fromARGB(255, 237, 238, 240)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                              image: AssetImage('assets/facebook.png'))),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Sign Up with Facebook",
                      style: GoogleFonts.plusJakartaSans(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 40,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "OR",
              style:
                  GoogleFonts.poppins(color: Color.fromARGB(255, 88, 93, 105)),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0, right: 15, left: 15),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color.fromARGB(255, 237, 238, 240)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Sign up with email",
                      style: GoogleFonts.plusJakartaSans(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 25, left: 60, right: 60),
              child: Text("By signing up you are agreed with our friendly terms and condition.", textAlign: TextAlign.center, style: GoogleFonts.poppins(fontSize: 14, color: Color.fromARGB(255, 64, 70, 83)),),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 90, left: 60, right: 60),
              child: Text("Already have an account?", textAlign: TextAlign.center, style: GoogleFonts.poppins(fontSize: 16, color: Color.fromARGB(255, 64, 70, 83)),),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 35, left: 60, right: 60),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
                },
                child: Text("Sign in", textAlign: TextAlign.center, style: GoogleFonts.poppins(fontSize: 16, color: buttonColor, fontWeight: FontWeight.w500),)),
            ),
          ],
        ),
      ),
    );
  }
}
