import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:gurukulapp/Screens/assignmentScreen/assignmentScreen.dart';
import 'package:gurukulapp/constraits.dart';

class NewAssignmentBoard extends StatefulWidget {
  const NewAssignmentBoard(
      {super.key, required this.title, required this.onSelect});

  final String title;
  final void Function() onSelect;

  @override
  State<NewAssignmentBoard> createState() {
    return _NewAssignmentBoardState();
  }
}

class _NewAssignmentBoardState extends State<NewAssignmentBoard> {
  final List<String> notices = [
    'Annual Function Notice',
    'Examination Notice',
    'Fees Notice',
    'Sports Day Notice',
    'Week Days Notice',
    'Week Days Notice',
    'Week Days Notice',
    'Week Days Notice',
    'Week Days Notice',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: MediaQuery.of(context).size.width,
      color: kPrimaryLightColor,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                    child: Text(
                  widget.title,
                  style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.bold, fontSize: 10),
                )),
                Container(
                    width: 80,
                    height: 20,
                    child: ElevatedButton(
                        onPressed: widget.onSelect,
                        child: Text('See All',
                            style: GoogleFonts.ubuntu(
                                fontWeight: FontWeight.bold, fontSize: 8)))),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 4),
              child: Divider(
                height: 4,
                color: kPrimaryColor,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: notices.length,
                itemBuilder: (context, index) {
                  return Card(
                      elevation: 2,
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            index % 2 == 0
                                ? 'assets/circles/green_circle.png'
                                : 'assets/circles/red_circle.png',
                            height: 40,
                            color: index % 2 == 0 ? Colors.green : Colors.red,
                            width: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                notices[index],
                                style: GoogleFonts.ubuntu(
                                    color: index % 2 == 0
                                        ? Colors.green
                                        : Colors.red,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Summary About the Annual',
                                style: GoogleFonts.ubuntu(
                                    color: Colors.black, fontSize: 8),
                              ),
                            ],
                          ),
                        ],
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
