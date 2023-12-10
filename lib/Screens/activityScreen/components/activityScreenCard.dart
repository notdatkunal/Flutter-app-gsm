import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gurukulapp/constraits.dart';

class ActivityScreenCard extends StatelessWidget {
  const ActivityScreenCard(
      {super.key,
      required this.color,
      required this.title,
      required this.subtitle,
      required this.imageUrl,
      required this.selectedIcon});

  final Color color;
  final String title;
  final String subtitle;
  final String imageUrl;
  final Icon selectedIcon;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Container(
          // padding: EdgeInsets.all(20),
          height: 80,
          // color: Colors.black,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset(
                    'assets/decoration/upper.png',
                    color: color.withOpacity(0.2),
                    height: 100,
                  )),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/circles/$imageUrl.png',
                          color: color,
                        ),
                        Container(
                          height: 20,
                          child: DefaultVerticleDivider(
                            thickness: 2,
                            color: color,
                          ),
                        ),
                      ],
                    ),
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
                        Text('on $subtitle',
                            style: GoogleFonts.ubuntu(
                                fontSize: 15,
                                color: color,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                  selectedIcon,
                ],
              ),
            ],
          )),
    );
  }
}
