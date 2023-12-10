import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gurukulapp/constraits.dart';

class CalenderCard extends StatelessWidget {
  const CalenderCard({super.key, required this.color, required this.title});

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
        color: Colors.white,
        elevation: 2,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Image.asset(
                'assets/decoration/lower.png',
                color: color.withOpacity(0.2),

                // color: index % 2 == 1
                //     ? Colors.green.shade100
                //     : Colors.red.shade100,
                height: 90,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.access_alarm,
                    // color: color,
                    size: 40,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '9:00 a.m',
                    style: GoogleFonts.ubuntu(
                        // color: color,
                        fontSize: 15),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      title,
                      style: GoogleFonts.ubuntu(
                          color: color,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  DefaultVerticleDivider(
                    color: color,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Mr. Rakesh Kumar',
                        style: GoogleFonts.ubuntu(
                            color: color,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
