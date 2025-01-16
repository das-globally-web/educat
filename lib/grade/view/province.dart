import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student/constant/colortheme.dart';

class Province extends StatefulWidget {
  const Province({super.key});

  @override
  State<Province> createState() => _ProvinceState();
}

class _ProvinceState extends State<Province> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        foregroundColor: backgroundColor,
        leading: SizedBox(),
        title: Text(
          "What's your grade?",
          style: GoogleFonts.exo(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 54, 67, 86),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                width: 344,
                height: 398,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(237, 237, 237, 1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 15),
                      child: Text(
                        "Provinces of Sri Lanka",
                        style: TextStyle(
                          color: Color.fromRGBO(99, 109, 119, 100),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 11, left: 10),
                            width: 148,
                            height: 53,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.48),
                              color: Color.fromRGBO(230, 230, 230, 80),
                              // color: const Color.fromARGB(255, 228, 224, 224),
                            ),
                            child: Center(
                              child: Text(
                                "Central",
                                style: TextStyle(
                                  fontSize: 16.27,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(54, 67, 86, 100),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 11, left: 16),
                            width: 148,
                            height: 53,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.48),
                              color: Color.fromRGBO(230, 230, 230, 80),
                              // color: const Color.fromARGB(255, 228, 224, 224),
                            ),
                            child: Center(
                              child: Text(
                                "Eastern",
                                style: TextStyle(
                                  fontSize: 16.27,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(54, 67, 86, 100),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.only(top: 16),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 11, left: 10),
                            width: 148,
                            height: 53,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.48),
                              color: Color.fromRGBO(230, 230, 230, 80),
                              // color: const Color.fromARGB(255, 228, 224, 224),
                            ),
                            child: Center(
                              child: Text(
                                "North Central",
                                style: TextStyle(
                                  fontSize: 16.27,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(54, 67, 86, 100),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 11, left: 16),
                            width: 148,
                            height: 53,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.48),
                              color: Color.fromRGBO(230, 230, 230, 80),
                              // color: const Color.fromARGB(255, 228, 224, 224),
                            ),
                            child: Center(
                              child: Text(
                                "Northern",
                                style: TextStyle(
                                  fontSize: 16.27,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(54, 67, 86, 100),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.only(top: 16),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 11, left: 10),
                            width: 148,
                            height: 53,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.48),
                              color: Color.fromRGBO(230, 230, 230, 80),
                              // color: const Color.fromARGB(255, 228, 224, 224),
                            ),
                            child: Center(
                              child: Text(
                                "North Western",
                                style: TextStyle(
                                  fontSize: 16.27,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(54, 67, 86, 100),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 11, left: 16),
                            width: 148,
                            height: 53,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.48),
                              // color: Color.fromRGBO(230, 230, 230, 100),
                              color: buttonColor,
                            ),
                            child: Center(
                              child: Text(
                                "Sabaragamuwa",
                                style: TextStyle(
                                  fontSize: 16.27,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.only(top: 16),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 11, left: 10),
                            width: 148,
                            height: 53,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.48),
                              color: Color.fromRGBO(230, 230, 230, 80),
                              // color: const Color.fromARGB(255, 228, 224, 224),
                            ),
                            child: Center(
                              child: Text(
                                "Southern",
                                style: TextStyle(
                                  fontSize: 16.27,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(54, 67, 86, 100),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 11, left: 16),
                            width: 148,
                            height: 53,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.48),
                              color: Color.fromRGBO(230, 230, 230, 80),
                              // color: const Color.fromARGB(255, 228, 224, 224),
                            ),
                            child: Center(
                              child: Text(
                                "Uva",
                                style: TextStyle(
                                  fontSize: 16.27,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(54, 67, 86, 100),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 11, left: 10),
                      width: 148,
                      height: 53,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.48),
                        color: Color.fromRGBO(230, 230, 230, 80),
                        // color: const Color.fromARGB(255, 228, 224, 224),
                      ),
                      child: Center(
                        child: Text(
                          "Southern",
                          style: TextStyle(
                            fontSize: 16.27,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(54, 67, 86, 100),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 86),
              Container(
                width: 267,
                height: 61,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: buttonColor,
                ),
                child: Center(
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(
                  "Skip",
                  style: TextStyle(color: buttonColor, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
