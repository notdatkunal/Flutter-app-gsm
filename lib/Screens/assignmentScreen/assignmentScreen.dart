import 'package:flutter/material.dart';

import 'package:gurukulapp/Screens/assignmentScreen/widgets/assignmentScreenBoard.dart';
import 'package:gurukulapp/Screens/assignmentScreen/widgets/assignmentToggleButtons.dart';
import 'package:gurukulapp/constraits.dart';

import 'package:gurukulapp/defaultScaffold.dart';

class AssignmentScreen extends StatefulWidget {
  const AssignmentScreen({super.key});

  @override
  State<AssignmentScreen> createState() {
    return _AssignmentScreenState();
  }
}

class _AssignmentScreenState extends State<AssignmentScreen> {
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
    return DefaultScaffold(
        title: 'Assignment',
        color: kPrimaryLightColor,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AssignmentToogleButtons(),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                AssignmentScreenBoard(),
              ],
            ),
          ),
        ));
  }
}
