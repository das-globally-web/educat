import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student/constant/colortheme.dart';
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
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              new SizedBox(
                height: 50,
              ),
              Container(
                height: 235,
                width: 353,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage('assets/Webinar-pana.png'))),
              ),
              SizedBox(
                height: 40,
              ),
              MyTextField(
                lable: 'Name',
                hintTExt: 'Your Name',
                obsucere: false,
                controller: _nameController,
              ),
              SizedBox(
                height: 15,
              ),
              MyTextField(
                lable: 'Email address',
                hintTExt: 'name@example.com',
                obsucere: false,
                controller: _emailController,
              ),
              SizedBox(
                height: 15,
              ),
              MyTextField(
                lable: 'Password',
                hintTExt: '*******',
                obsucere: true,
                controller: _passwordController,
              ),
              new SizedBox(
                height: 60,
              ),
               Container(
                  height: 61,
                  width: 267,
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(25, 0, 0, 0),
                        spreadRadius: -2,
                        blurRadius: 32,
                        offset: Offset(0, 10)
                      )
                    ]
                  ),
                  child: Center(
                    child: Text("Sign up", style: GoogleFonts.exo(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),)
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("You have account? ", style: GoogleFonts.exo(fontSize: 18, color: Color.fromARGB(255, 99, 109, 119)),),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, CupertinoPageRoute(builder: (context) => SignInPage()));
                      },
                      child: Text("Sign in", style: GoogleFonts.exo(fontSize: 18, color: buttonColor),)),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
