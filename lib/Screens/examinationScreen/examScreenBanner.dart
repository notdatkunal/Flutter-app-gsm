import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gurukulapp/constraits.dart';

class ExamScreenBanner extends StatelessWidget {
  const ExamScreenBanner({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 130,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 92, 57, 166),
            // color: kPrimaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: Stack(children: [
          Positioned(
              top: 0,
              right: 0,
              child: Image.asset(
                'assets/decoration/upper.png',
                color: Color(0xFFfeddc7),
                // height: 100,
              )),

          Positioned(
              right: 50,
              // // bottom: 0,
              top: 12,
              child: Image.asset(
                'assets/decoration/examgirl.png',
                // color: Color.fromARGB(255, 33, 5, 81),
                height: 120,
              )),

          // Image.asset('assets/icons/information.png'),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 30,
              ),
              Image.asset('assets/decoration/exambanner.png'),
            ],
          ),
          Positioned(
            top: 40,
            left: 45,
            // bottom: 28,
            // right: 40,
            child: Text(
              'Exam',
              style: GoogleFonts.ubuntu(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          )
        ]),
      ),
    );
  }
}
