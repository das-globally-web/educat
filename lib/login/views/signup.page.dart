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
    // Screen dimensions
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    // Scaling factors
    double heightScale = screenHeight / 823; // Replace 823 with your Figma design height
    double widthScale = screenWidth / 411;   // Replace 411 with your Figma design width

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(30.0 * widthScale),
                child: Text(
                  "Welcome! \n Sign up to continue!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.plusJakartaSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 26 * widthScale,
                  ),
                ),
              ),
              _buildSignUpButton(
                context,
                "Sign Up with Google",
                "assets/googlelogo.png",
                widthScale,
                heightScale,
              ),
              SizedBox(height: 20 * heightScale),
              _buildSignUpButton(
                context,
                "Sign Up with Facebook",
                "assets/facebook.png",
                widthScale,
                heightScale,
              ),
              SizedBox(height: 40 * heightScale),
              Text(
                "OR",
                style: GoogleFonts.poppins(
                  color: const Color.fromARGB(255, 88, 93, 105),
                  fontSize: 16 * widthScale,
                ),
              ),
              SizedBox(height: 40 * heightScale),
              _buildSignUpButton(
                context,
                "Sign up with email",
                null, // No icon for this button
                widthScale,
                heightScale,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 60 * widthScale,
                  vertical: 25 * heightScale,
                ),
                child: Text(
                  "By signing up you are agreed with our friendly terms and conditions.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 14 * widthScale,
                    color: const Color.fromARGB(255, 64, 70, 83),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 90 * heightScale,
                  left: 60 * widthScale,
                  right: 60 * widthScale,
                ),
                child: Text(
                  "Already have an account?",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 16 * widthScale,
                    color: const Color.fromARGB(255, 64, 70, 83),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 35 * heightScale,
                  left: 60 * widthScale,
                  right: 60 * widthScale,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                  },
                  child: Text(
                    "Sign in",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16 * widthScale,
                      color: buttonColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpButton(
    BuildContext context,
    String text,
    String? iconPath,
    double widthScale,
    double heightScale,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15 * widthScale),
      child: Container(
        height: 60 * heightScale,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6 * widthScale),
          color: const Color.fromARGB(255, 237, 238, 240),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (iconPath != null)
              Container(
                height: 28 * heightScale,
                width: 28 * widthScale,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(image: AssetImage(iconPath)),
                ),
              ),
            if (iconPath != null) SizedBox(width: 25 * widthScale),
            Text(
              text,
              style: GoogleFonts.plusJakartaSans(
                color: Colors.black,
                fontSize: 16 * widthScale,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
