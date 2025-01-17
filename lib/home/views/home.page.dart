import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student/constant/colortheme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Screen dimensions
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    // Scaling factors
    double heightScale =
        screenHeight / 823; // Replace 823 with your design height
    double widthScale = screenWidth / 411; // Replace 411 with your design width

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              leading: SizedBox(),
              backgroundColor: Colors.white,
              expandedHeight: 250.0,
              floating: false,
              pinned: true,
              flexibleSpace: SingleChildScrollView(
                child: Container(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 55 * heightScale,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 30 * widthScale,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Good evening!",
                                  style: GoogleFonts.exo(
                                      color: Color.fromARGB(255, 54, 67, 86),
                                      fontSize: 32 * widthScale,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Hardline Scott",
                                  style: GoogleFonts.exo(
                                      color: Color.fromARGB(255, 99, 109, 119),
                                      fontSize: 20 * widthScale,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: 62 * heightScale,
                              width: 62 * widthScale,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/userimage.png"),
                                      fit: BoxFit.fill),
                                  color: Color.fromARGB(255, 232, 219, 219),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromARGB(30, 0, 0, 0),
                                        spreadRadius: 0,
                                        blurRadius: 17,
                                        offset: Offset(0, 8))
                                  ],
                                  borderRadius: BorderRadius.circular(
                                      13.56 * heightScale)),
                            ),
                            SizedBox(
                              width: 30 * widthScale,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40 * heightScale,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 30 * widthScale,
                            ),
                            Container(
                              width: widthScale * 267,
                              height: heightScale * 61,
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(25, 0, 0, 0),
                                    spreadRadius: -2,
                                    blurRadius: 32,
                                    offset: Offset(0, 14))
                              ]),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: "Search your teacher",
                                  hintStyle: GoogleFonts.exo(
                                      fontSize: 16 * widthScale,
                                      fontWeight: FontWeight.w600),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      height: 45 * heightScale,
                                      width: 45 * widthScale,
                                      decoration: BoxDecoration(
                                          color: buttonColor,
                                          borderRadius: BorderRadius.circular(
                                              10 * widthScale),
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 2,
                                            style: BorderStyle.solid,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                                color:
                                                    Color.fromARGB(25, 0, 0, 0),
                                                spreadRadius: 0,
                                                blurRadius: 4,
                                                offset: Offset(0, 4))
                                          ]),
                                      child: Center(
                                        child: Icon(
                                          Icons.search,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                    borderRadius:
                                        BorderRadius.circular(12 * widthScale),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                    borderRadius:
                                        BorderRadius.circular(12 * widthScale),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                    borderRadius:
                                        BorderRadius.circular(12 * widthScale),
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: 27.85 * heightScale,
                              width: 27.85 * widthScale,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/menuicon.png"))),
                            ),
                            SizedBox(
                              width: 30 * widthScale,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )),
          SliverToBoxAdapter(
              child: Column(
            children: [
              SizedBox(
                height: 20 * heightScale,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 30 * widthScale,
                  ),
                  Text(
                    "Propular Teachers",
                    style: GoogleFonts.exo(
                        fontSize: 20 * widthScale, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Icon(
                    Icons.filter_alt_sharp,
                    color: buttonColor,
                    size: 28 + widthScale,
                  ),
                  SizedBox(
                    width: 30 * widthScale,
                  ),
                ],
              ),
              SizedBox(
                height: 35 * heightScale,
              ),
              AreaSection(),
              SizedBox(height: 2000 * heightScale),
            ],
          )),
        ],
      ),
    );
  }
}

class AreaSection extends StatefulWidget {
  const AreaSection({super.key});

  @override
  State<AreaSection> createState() => _AreaSectionState();
}

class _AreaSectionState extends State<AreaSection> {
  int buttonIndex = 0;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    // Scaling factors
    double heightScale =
        screenHeight / 823; // Replace 823 with your design height
    double widthScale = screenWidth / 411;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 30 * widthScale,
            ),
            Text(
              "Area",
              style: GoogleFonts.exo(
                  fontSize: 12 * widthScale, fontWeight: FontWeight.w600),
            )
          ],
        ),
        SizedBox(
          height: 12 * heightScale,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 30 * widthScale,
            ),
            Container(
              height: 25.45 * heightScale,
              width: 69.32 * widthScale,
              decoration: BoxDecoration(
                color: buttonIndex ==0 ?buttonColor : Colors.white,
                borderRadius: BorderRadius.circular(8.77 * heightScale),
              ),
              child: Center(
                  child: Text(
                "Island",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.79 * widthScale,
                    color: buttonIndex == 0? Colors.white: Colors.black),
              )),
            ),
            SizedBox(
              width: 10 * widthScale,
            ),
            Container(
              height: 25.45 * heightScale,
              width: 69.32 * widthScale,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(8.77 * heightScale),
              ),
              child: Center(
                  child: Text(
                "Island",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.79 * widthScale,
                    color: Colors.white),
              )),
            ),
            SizedBox(
              width: 10 * widthScale,
            ),
            Container(
              height: 25.45 * heightScale,
              width: 69.32 * widthScale,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(8.77 * heightScale),
              ),
              child: Center(
                  child: Text(
                "Island",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.79 * widthScale,
                    color: Colors.white),
              )),
            )
          ],
        ),
      ],
    );
  }
}
