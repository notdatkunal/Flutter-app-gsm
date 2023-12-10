import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gurukulapp/constraits.dart';

class FeesScreenCard extends StatelessWidget {
  const FeesScreenCard({
    super.key,
    required this.heading,
    required this.ammount,
  });
  final String heading;
  final String ammount;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Container(
          // padding: EdgeInsets.all(20),
          height: 80,
          // color: Colors.black,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Stack(
            children: [
              // Positioned(
              //     child: Image.asset(
              //   'assets/decoration/lower.png',
              //   color: Color.fromARGB(255, 239, 214, 214),
              //   height: 100,
              // )),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.calendar_month,
                          size: 40,
                          color: const Color.fromARGB(255, 42, 45, 116),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 5),
                            width: 50,
                            alignment: Alignment.center,
                            child: DefaultText(
                              title: '27, Nov 2023',
                              color: const Color.fromARGB(255, 42, 45, 116),
                              fontsize: 10,
                              weight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(heading,
                            style: GoogleFonts.ubuntu(
                                fontSize: 25,
                                color: const Color.fromARGB(255, 42, 45, 116),
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/ruppee.png',
                        // color: Colors.green,
                        height: 30,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      DefaultText(
                        title: ammount,
                        color: Colors.red,
                        fontsize: 15,
                        weight: FontWeight.bold,
                      ),
                    ],
                  )

                  // selectedIcon,
                ],
              ),
            ],
          )),
    );
  }
}
