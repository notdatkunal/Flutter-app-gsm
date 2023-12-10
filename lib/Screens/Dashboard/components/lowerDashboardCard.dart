import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gurukulapp/constraits.dart';

class LowerDashboardCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      elevation: 2,
      color: Colors.white,
      child: Container(
        // color: kPrimaryColor,
        width: double.infinity,
        height: 80,
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                child: Image.asset(
                  'assets/decoration/lower.png',
                  color: Colors.orange.shade100.withOpacity(0.5),
                  height: 60,
                )),
            Positioned(
                top: 0,
                right: 0,
                child: Image.asset(
                  'assets/decoration/upper.png',
                  color: Colors.orange.shade100.withOpacity(0.5),
                  height: 90,
                )),

            // padding: EdgeInsets.symmetric(horizontal: 18),
            Row(
              children: [
                Container(
                    // padding: EdgeInsets.all(4),
                    width: 100,
                    height: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '90%',
                          style: GoogleFonts.ubuntu(
                              // color: Colors.white,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 35),
                        ),
                        Text(
                          'Attendence',
                          style: GoogleFonts.ubuntu(
                              // color: Colors.white,
                              // color: Colors.red,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 10),
                        ),
                      ],
                    )),
                DefaultVerticleDivider(
                  color: Colors.black,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.copy,
                      color: Colors.orange,
                      size: 40,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      '20 Nov',
                      style: GoogleFonts.ubuntu(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.orange),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Upcomming Exams',
                        style: GoogleFonts.ubuntu(
                          fontWeight: FontWeight.bold,
                          // color: Colors.orange,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'Semester #2',
                            style: GoogleFonts.ubuntu(
                              // color: Colors.orange,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
