import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gurukulapp/constraits.dart';
// import 'package:gurukulapp/constraits.dart';

class LowerCard extends StatelessWidget {
  const LowerCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: kPrimaryColor,
        width: double.infinity,
        height: 70,
        // decoration: BoxDecoration(border: Border.all(color: Colors.white)),

        child: Row(
          children: [
            Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.orange,
                        width: 4,
                        style: BorderStyle.solid)),
                width: 100,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '90%',
                      style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    Text(
                      'Attendence',
                      style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                  ],
                )),
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
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.pages_sharp,
                            color: Colors.orange,
                          ),
                          Text(
                            '20 Nov',
                            style: GoogleFonts.ubuntu(
                                color: Colors.orange, fontSize: 10),
                          )
                        ],
                      ),
                      Text(
                        'Semester #2',
                        style: GoogleFonts.ubuntu(
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
