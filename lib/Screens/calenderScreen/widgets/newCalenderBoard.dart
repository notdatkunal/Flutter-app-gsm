import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gurukulapp/Screens/calenderScreen/widgets/calenderCard.dart';
import 'package:gurukulapp/constraits.dart';

class CalenderNoticeBoard extends StatefulWidget {
  const CalenderNoticeBoard({super.key, required this.title});

  final String title;

  @override
  State<CalenderNoticeBoard> createState() {
    return _NewCalenderBoardState();
  }
}

class _NewCalenderBoardState extends State<CalenderNoticeBoard> {
  final List<String> notices = [
    'English',
    'Science',
    'Math',
    'English',
    'Science',
    'Math',
    'English',
    'Science',
    'Math',
    // Add more notices as needed
  ];

  final List<Color> noticeColor = [
    Colors.red,
    Colors.green,
    kPrimaryColor,
    Colors.red,
    Colors.green,
    kPrimaryColor,
    Colors.red,
    Colors.green,
    kPrimaryColor,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
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
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
              )),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: notices.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 1),
                  height: 100,
                  child: CalenderCard(
                    color: noticeColor[index],
                    title: notices[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
