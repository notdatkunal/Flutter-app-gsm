import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoticeScreenCard extends StatelessWidget {
  const NoticeScreenCard(
      {super.key,
      required this.title,
      required this.date,
      required this.color});

  final String title;
  final String date;
  final Color color;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Container(
        height: 80,
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(children: [
          Positioned(
              left: 0,
              top: -2,
              child: Transform.rotate(
                angle: -1.57079632679,
                child: Image.asset(
                  'assets/decoration/upper.png',
                  color: color.withOpacity(0.3),
                  height: 100,
                ),
              )),
          Row(
            children: [
              Image.asset(
                'assets/decoration/speaker.png',
                // color: Colors.green,
                height: 50,
              ),
              Container(
                width: 240,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title,
                        style: GoogleFonts.ubuntu(
                            fontSize: 20,
                            color: color,
                            fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: color,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('on $date',
                            style: GoogleFonts.ubuntu(
                                fontSize: 15,
                                color: color,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ],
                ),
              ),
              // selectedIcon,
            ],
          ),
          Positioned(
              right: 10,
              bottom: 5,
              child: color == Colors.red
                  ? Image.asset(
                      'assets/decoration/expired.png',
                      // color: Colors.red.withOpacity(0.4),
                      height: 60,
                    )
                  : Image.asset(
                      'assets/decoration/new.png',
                      // color: Colors.red.withOpacity(0.4),
                      height: 50,
                    ))
        ]),
      ),
    );
  }
}
