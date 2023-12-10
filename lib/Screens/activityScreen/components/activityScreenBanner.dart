import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityScreenBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        // padding: EdgeInsets.all(20),
        height: 130,
        // color: Colors.black,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                child: Image.asset(
                  'assets/decoration/lower.png',
                  color: Colors.orange.shade100.withOpacity(0.5),
                  // height: 60,
                )),
            Positioned(
                top: 0,
                right: 0,
                child: Image.asset(
                  'assets/decoration/upper.png',
                  color: Colors.blue.shade100.withOpacity(0.5),
                  // height: 60,
                )),
            Positioned(
                right: 10,
                // bottom: 0,
                top: 0,
                child: Image.asset(
                  'assets/icons/cloud.png',
                  // color: Colors.orange.shade100.withOpacity(0.5),
                  height: 180,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40,
                ),
                Image.asset(
                  'assets/icons/activity.png',
                  // width: 120,
                  // height: 120,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            Positioned(
              // top: 20,
              bottom: 30,
              right: 40,
              child: Text(
                'Activity',
                style: GoogleFonts.ubuntu(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
