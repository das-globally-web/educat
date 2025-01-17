import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student/constant/colortheme.dart';
import 'package:student/login/views/signupform.page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _emailController = TextEditingController();
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
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildLogo(widthScale, heightScale),
                SizedBox(height: 150 * heightScale),
                MyTextField(
                  label: 'Email address',
                  hintText: 'name@example.com',
                  obscure: false,
                  controller: _emailController,
                ),
                SizedBox(height: 25 * heightScale),
                MyTextField(
                  label: 'Password',
                  hintText: '**********',
                  obscure: true,
                  controller: _passwordController,
                ),
                SizedBox(height: 60 * heightScale),
                _buildSignInButton(context, widthScale, heightScale),
                SizedBox(height: 30 * heightScale),
                _buildSignUpPrompt(context, widthScale, heightScale),
                SizedBox(height: 60 * heightScale),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogo(double widthScale, double heightScale) {
    return Container(
      width: 100 * widthScale,
      height: 61.38 * heightScale,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10 * widthScale),
        image: const DecorationImage(image: AssetImage('assets/logo.png')),
      ),
    );
  }

  Widget _buildSignInButton(BuildContext context, double widthScale, double heightScale) {
    return GestureDetector(
      onTap: () {
        // Add sign-in logic here
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
            "Sign In",
            style: GoogleFonts.exo(
              fontSize: 20 * widthScale,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpPrompt(BuildContext context, double widthScale, double heightScale) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: GoogleFonts.exo(
            fontSize: 18 * widthScale,
            color: const Color.fromARGB(255, 99, 109, 119),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) => const SignupFormPage()),
            );
          },
          child: Text(
            "Sign up",
            style: GoogleFonts.exo(
              fontSize: 18 * widthScale,
              color: buttonColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

class MyTextField extends StatefulWidget {
  final String label;
  final String hintText;
  final bool obscure;
  final TextEditingController controller;

  const MyTextField({
    super.key,
    required this.label,
    required this.hintText,
    required this.obscure,
    required this.controller,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool isSecure = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: GoogleFonts.exo(
              color: const Color.fromARGB(255, 99, 109, 119),
              fontSize: 16,
            ),
          ),
          SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(5, 0, 0, 0),
                  spreadRadius: 0,
                  blurRadius: 6,
                  offset: const Offset(0, 7),
                ),
              ],
            ),
            child: TextFormField(
              controller: widget.controller,
              obscureText: widget.obscure ? isSecure : false,
              decoration: InputDecoration(
                suffixIcon: widget.obscure
                    ? GestureDetector(
                        onTap: () {
                          setState(() {
                            isSecure = !isSecure;
                          });
                        },
                        child: Icon(
                          isSecure ? Icons.visibility_off : Icons.visibility,
                        ),
                      )
                    : const SizedBox(),
                fillColor: Colors.white,
                filled: true,
                hintText: widget.hintText,
                hintStyle: GoogleFonts.roboto(
                  fontSize: 14,
                  color: const Color.fromARGB(255, 54, 67, 86),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(8),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
