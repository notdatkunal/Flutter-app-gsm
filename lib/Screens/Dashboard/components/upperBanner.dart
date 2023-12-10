import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gurukulapp/constraits.dart';

class UpperBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
        color: Colors.white,
        elevation: 2,
        child: Stack(children: [
          Positioned(
            bottom: 0,
            child: Image.asset(
              'assets/decoration/lower.png',
              color: kPrimaryLightColor,

              // color: index % 2 == 1
              //     ? Colors.green.shade100
              //     : Colors.red.shade100,
              height: 80,
              // width: 200,
            ),
          ),
          Positioned(
            // bottom: 0,
            right: 0,
            child: Image.asset(
              'assets/decoration/upper.png',
              color: kPrimaryLightColor,

              // color: index % 2 == 1
              //     ? Colors.green.shade100
              //     : Colors.red.shade100,
              height: 100,
              // width: 200,
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/gurukul.png',
                          height: 60,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.phone_in_talk,
                                  size: 10,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '935-233-2222',
                                  style: GoogleFonts.ubuntu(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.email,
                                  size: 10,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'gurukul@gmail.com',
                                  style: GoogleFonts.ubuntu(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ]),
                ),
              ]))
        ]));
  }
}
