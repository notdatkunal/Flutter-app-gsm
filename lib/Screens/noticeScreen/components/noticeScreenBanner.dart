import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:gurukulapp/constraits.dart';

class NoticeScreenBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 130,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 146, 200, 244).withOpacity(0.9),
            // color: kPrimaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: Stack(children: [
          Positioned(
              bottom: 0,
              child: Image.asset(
                'assets/decoration/lower.png',
                color: Colors.yellowAccent.shade400.withOpacity(0.9),
                height: 80,
              )),
          Positioned(
              top: 0,
              right: 0,
              child: Image.asset(
                'assets/decoration/upper.png',
                color: Colors.yellowAccent.shade400.withOpacity(0.9),
                // height: 100,
              )),
          Positioned(
            right: 30,
            child: Image.asset(
              'assets/decoration/speaker.png',
              height: 60,
            ),
          ),
          Positioned(
              right: 10,
              // bottom: 0,
              top: 0,
              child: Image.asset(
                'assets/icons/cloud.png',
                color: Color.fromARGB(255, 33, 5, 81),
                height: 180,
              )),

          // Image.asset('assets/icons/information.png'),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 30,
              ),
              Image.asset('assets/icons/information.png'),
            ],
          ),
          Positioned(
            // top: 20,
            bottom: 28,
            right: 40,
            child: Text(
              'Notice',
              style: GoogleFonts.ubuntu(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )
        ]),
      ),
    );
  }
}
