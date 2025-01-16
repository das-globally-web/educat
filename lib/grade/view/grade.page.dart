import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student/constant/colortheme.dart';
import 'package:student/grade/view/province.dart';

class GradePage extends StatefulWidget {
  const GradePage({super.key});

  @override
  State<GradePage> createState() => _GradePageState();
}

class _GradePageState extends State<GradePage> {
  String? selectedValue;

  // Dropdown items
  final List<String> items = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

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
        child: Column(
          children: [
            SizedBox(height: 30),
            MyDrop(
              text: "Grade  1 - 5",
              iconData: Icons.keyboard_arrow_down_outlined,
            ),
            MyDrop(
              text: "Grade  6 - 9",
              iconData: Icons.keyboard_arrow_down_outlined,
            ),
            MyDrop(
              text: "Grade  10 - 11",
              iconData: Icons.keyboard_arrow_down_outlined,
            ),
            // Container(
            //   margin: EdgeInsets.only(top: 18),
            //   width: 344,
            //   height: 60,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(8),
            //     color: containerColor,
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Container(
            //         margin: EdgeInsets.only(left: 10),
            //         child: Text(
            //           "Grade  12 - 13",
            //           style: TextStyle(
            //               color: Color.fromRGBO(99, 109, 119, 100),
            //               fontSize: 18,
            //               fontWeight: FontWeight.bold),
            //         ),
            //       ),
            //       Container(
            //         margin: EdgeInsets.only(right: 10),
            //         child: Icon(
            //           Icons.keyboard_arrow_down,
            //           size: 30,
            //           color: Color.fromRGBO(99, 109, 119, 100),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: DropdownButtonFormField<String>(
                hint: Text("Grade  12 - 13"),
                iconSize: 30,
                icon: Icon(Icons.keyboard_arrow_down),
                borderRadius: BorderRadius.circular(30),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: containerColor,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
                items: items.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                     
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue;
                  });
                },
              ),
            ),

            SizedBox(height: 100),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Province(),
                    ));
              },
              child: Container(
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
    );
  }
}

class MyDrop extends StatefulWidget {
  final String text;
  final IconData iconData;

  const MyDrop({
    required this.text,
    required this.iconData,
    super.key,
  });

  @override
  State<MyDrop> createState() => _MyDropState();
}

class _MyDropState extends State<MyDrop> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Column(
        children: [
          Container(
            width: 344,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: containerColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    widget.text,
                    style: TextStyle(
                        color: Color.fromRGBO(99, 109, 119, 100),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Icon(
                    widget.iconData,
                    size: 30,
                    color: Color.fromRGBO(99, 109, 119, 100),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
