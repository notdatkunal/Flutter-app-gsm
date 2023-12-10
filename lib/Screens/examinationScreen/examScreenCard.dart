import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gurukulapp/constraits.dart';

class ExamScreenCard extends StatelessWidget {
  const ExamScreenCard({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 90,
      padding: EdgeInsets.all(4),
      color: Colors.white,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/decoration/examboard.png',
            // color: Colors.green,
            height: 60,
          ),
          Container(
            // width: 220,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Semester 2 Exam',
                    style: GoogleFonts.ubuntu(
                        fontSize: 22,
                        color: color,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.calendar_month,
                      // color: color,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('on 27,Nov 2023',
                        style: GoogleFonts.ubuntu(
                            fontSize: 15,
                            color: color,
                            fontWeight: FontWeight.w600)),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.person,
                      // color: color,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('125',
                        style: GoogleFonts.ubuntu(
                            fontSize: 15,
                            color: color,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ],
            ),
          ),
          Container(
              height: 80, child: DefaultVerticleDivider(color: Colors.black)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DefaultText(
                  title: '35',
                  color: color,
                  fontsize: 30,
                  weight: FontWeight.bold),
              Container(
                width: 40,
                child: DefaultText(
                    title: 'Days to Go',
                    color: color,
                    fontsize: 15,
                    weight: FontWeight.w600),
              ),
            ],
          )
        ],
      ),
    );
  }
}
