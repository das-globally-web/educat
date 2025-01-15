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
  final _emailControler = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                Container(
                  width: 100,
                  height: 61.38,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage('assets/logo.png'))),
                ),
                
                new SizedBox(
                  height: 150,
                ),
                MyTextField(
                  lable: 'Email address',
                  hintTExt: 'name@example.com',
                  obsucere: false,
                  controller: _emailControler,
                ),
                SizedBox(
                  height: 25,
                ),
                MyTextField(
                  lable: 'Password',
                  hintTExt: '**********',
                  obsucere: true,
                  controller: _passwordController,
                ),
                SizedBox(
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
                    child: Text("Sign In", style: GoogleFonts.exo(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),)
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Don't have account? ", style: GoogleFonts.exo(fontSize: 18, color: Color.fromARGB(255, 99, 109, 119)),),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, CupertinoPageRoute(builder: (context) => SignupFormPage()));
                      },
                      child: Text("Sign up", style: GoogleFonts.exo(fontSize: 18, color: buttonColor),)),
                  ],
                ),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyTextField extends StatefulWidget {
  final String lable;
  final String hintTExt;
  final bool obsucere;
  final TextEditingController controller;
  const MyTextField(
      {super.key,
      required this.lable,
      required this.hintTExt,
      required this.obsucere,
      required this.controller});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool secure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.lable,
            style: GoogleFonts.exo(
                color: Color.fromARGB(255, 99, 109, 119), fontSize: 16),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(05, 0, 0, 0),
                      spreadRadius: 0,
                      blurRadius: 6,
                      offset: Offset(0, 7))
                ]),
            child: TextFormField(
              controller: widget.controller,
              obscureText: widget.obsucere == true? secure: false,
              decoration: InputDecoration(
                suffixIcon: widget.obsucere ==true?  GestureDetector(
                  onTap: (){
                    setState(() {
                      secure = !secure;
                    });
                  },
                  child: secure==true? Icon(Icons.visibility_off): Icon(Icons.visibility)) : SizedBox(),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: widget.hintTExt,
                  hintStyle: GoogleFonts.roboto(
                      fontSize: 14, color: Color.fromARGB(255, 54, 67, 86)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(8)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(8)),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(8)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(8))),
            ),
          ),
        ],
      ),
    );
  }
}
