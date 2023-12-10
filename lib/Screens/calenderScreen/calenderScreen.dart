import 'package:flutter/material.dart';

import 'package:gurukulapp/Screens/calenderScreen/widgets/weekButtons.dart';
import 'package:gurukulapp/constraits.dart';
import 'package:gurukulapp/defaultScaffold.dart';
import 'package:gurukulapp/Screens/calenderScreen/widgets/newCalenderBoard.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() {
    return _CalenderScreenState();
  }
}

class _CalenderScreenState extends State<CalenderScreen> {
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
    // Add more notices as needed
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const DefaultScaffold(
        title: 'Calender',
        color: kPrimaryLightColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              WeekToggleButtons(),
              SizedBox(
                height: 15,
              ),
              Expanded(child: CalenderNoticeBoard(title: 'Total 5 Sessions')),
            ],
          ),
        ));
  }
}
