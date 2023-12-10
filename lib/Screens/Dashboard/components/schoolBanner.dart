import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gurukulapp/constraits.dart';
// import 'package:gurukulapp/constraits.dart';

class SchoolBanner extends StatelessWidget {
  const SchoolBanner({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        width: double.infinity,
        height: 120,
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            Row(
              children: [
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
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
