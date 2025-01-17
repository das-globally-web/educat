import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student/constant/colortheme.dart';
import 'package:student/grade/view/grade.page.dart';
import 'package:student/login/views/signin.page.dart';

class SignupFormPage extends StatefulWidget {
  const SignupFormPage({super.key});

  @override
  State<SignupFormPage> createState() => _SignupFormPageState();
}

class _SignupFormPageState extends State<SignupFormPage> {
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Screen dimensions
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    // Scaling factors
    double heightScale = screenHeight / 823; // Replace 823 with your design height
    double widthScale = screenWidth / 411;   // Replace 411 with your design width

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50 * heightScale),
              Container(
                height: 235 * heightScale,
                width: 353 * widthScale,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage('assets/Webinar-pana.png'),
                  ),
                ),
              ),
              SizedBox(height: 40 * heightScale),
              MyTextField(
                label: 'Name',
                hintText: 'Your Name',
                obscure: false,
                controller: _nameController,
              ),
              SizedBox(height: 15 * heightScale),
              MyTextField(
                label: 'Email address',
                hintText: 'name@example.com',
                obscure: false,
                controller: _emailController,
              ),
              SizedBox(height: 15 * heightScale),
              MyTextField(
                label: 'Password',
                hintText: '*******',
                obscure: true,
                controller: _passwordController,
              ),
              SizedBox(height: 60 * heightScale),
              GestureDetector(
                onTap: () {
                Navigator.push(context, CupertinoPageRoute(builder: (xontext)=> GradePage()));
                },
                child: Container(
                  height: 61 * heightScale,
                  width: 267 * widthScale,
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(12 * widthScale),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(25, 0, 0, 0),
                        spreadRadius: -2,
                        blurRadius: 32,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Sign up",
                      style: GoogleFonts.exo(
                        fontSize: 20 * widthScale,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30 * heightScale),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You have an account? ",
                    style: GoogleFonts.exo(
                      fontSize: 18 * widthScale,
                      color: const Color.fromARGB(255, 99, 109, 119),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => const SignInPage()),
                      );
                    },
                    child: Text(
                      "Sign in",
                      style: GoogleFonts.exo(
                        fontSize: 18 * widthScale,
                        color: buttonColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

