import 'package:flutter/material.dart';
import 'package:gurukulapp/Screens/transporatationScreen/transportationTile.dart';
import 'package:gurukulapp/constraits.dart';
import 'package:gurukulapp/defaultScaffold.dart';

class TransportationScreen extends StatelessWidget {
  const TransportationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
        title: 'Transportation',
        color: const Color.fromARGB(255, 250, 244, 223),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/decoration/tata.png',
                    // color: Color(0xFFfeddc7),
                    height: 40,
                  ),
                  const Column(
                    children: [
                      DefaultText(
                          title: 'Yellow Innova',
                          color: Colors.black,
                          fontsize: 20,
                          weight: FontWeight.bold),
                      DefaultText(
                          title: 'HYD 6523 GS652',
                          color: Colors.black,
                          fontsize: 15,
                          weight: FontWeight.w600),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade800,
                        size: 40,
                      ),
                      DefaultText(
                          title: '4.5 star', color: Colors.black, fontsize: 15),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  child: Image.asset(
                    'assets/decoration/bus.png',
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ],
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: DefaultText(
                    title: 'Information',
                    color: Colors.black,
                    fontsize: 40,
                    weight: FontWeight.bold,
                  ),
                ),
                TransportationTile(
                  imageUrl: 'assets/decoration/personicon.png',
                  headingTitle: 'Driver',
                  secondText: 'Mr. Sankar Prashad',
                  thirdText: '+91 9*********',
                  color: Colors.black,
                ),
                TransportationTile(
                  imageUrl: 'assets/decoration/locationpin.png',
                  headingTitle: 'Route',
                  secondText: 'Pickup : XYZ, School',
                  thirdText: 'Drop : XYZ, Home',
                  color: Colors.black,
                ),
              ],
            )
          ],
        ));
  }
}
