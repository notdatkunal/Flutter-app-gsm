import 'package:flutter/material.dart';
import 'package:gurukulapp/constraits.dart';

class TransportationTile extends StatelessWidget {
  const TransportationTile(
      {super.key,
      required this.imageUrl,
      required this.headingTitle,
      required this.secondText,
      required this.thirdText,
      required this.color});

  final String imageUrl;
  final String headingTitle;
  final String secondText;
  final String thirdText;
  final Color color;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Container(
        // color: Colors.white,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            // color: kPrimaryColor,
            borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            Positioned(
                top: 0,
                right: 0,
                child: Image.asset(
                  'assets/decoration/upper.png',
                  color: Color.fromARGB(255, 235, 184, 28).withOpacity(0.5),
                  // height: 200,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  imageUrl,
                  height: 130,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultText(
                        title: headingTitle,
                        color: Colors.black,
                        fontsize: 30,
                        weight: FontWeight.bold,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Divider(height: 3, color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      DefaultText(
                        title: secondText,
                        color: color,
                        fontsize: 20,
                        weight: FontWeight.w600,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      DefaultText(
                        title: thirdText,
                        color: color,
                        fontsize: 20,
                        weight: FontWeight.normal,
                      ),
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
