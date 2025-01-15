import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student/constant/colortheme.dart';

class GradePage extends StatefulWidget {
  const GradePage({super.key});

  @override
  State<GradePage> createState() => _GradePageState();
}

class _GradePageState extends State<GradePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        foregroundColor: backgroundColor,
        leading: SizedBox(),
        title: Text("What's your grade?", style: GoogleFonts.exo(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 54, 67, 86),),
      ),
    ));
  }
}