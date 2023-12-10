// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:gurukulapp/Screens/assignmentScreen/assignmentScreen.dart';
import 'package:gurukulapp/Screens/attendenceScreen/attendenceScreen.dart';
import 'package:gurukulapp/Screens/calenderScreen/calenderScreen.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:gurukulapp/Screens/assignmentScreen/assignmentScreen.dart';
// import 'package:gurukulapp/Screens/calenderScreen/calenderScreen.dart';
import 'package:gurukulapp/Screens/drawerTile.dart';
import 'package:gurukulapp/Screens/examinationScreen/examScreen.dart';
import 'package:gurukulapp/Screens/feesScreen/feesScreen.dart';
import 'package:gurukulapp/Screens/transporatationScreen/transportationScreen.dart';
// import 'package:gurukulapp/constraits.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    void onAssignment() {
      Navigator.pop(context);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => AssignmentScreen()));
    }

    void onCalender() {
      Navigator.pop(context);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => CalenderScreen()));
    }

    void onAttendance() {
      Navigator.pop(context);
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => AttendenceDetailScreen()));
    }

    void onExamination() {
      Navigator.pop(context);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ExamScreen()));
    }

    void onTransportation() {
      Navigator.pop(context);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => TransportationScreen()));
    }
    void onFees() {
      Navigator.pop(context);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => FeesScreen()));
    }

    return Drawer(
      // backgroundColor: kPrimaryLightColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 40,
          ),
          DrawerTile(
            icon: Icon(Icons.home),
            title: 'Home',
            onSelect: () {
              Navigator.pop(context);
            },
          ),
          DrawerTile(
            icon: Icon(Icons.copy_sharp),
            title: 'Assignment',
            onSelect: onAssignment,
          ),

          DrawerTile(
            icon: Icon(Icons.person),
            title: 'Attendence',
            onSelect: onAttendance,
          ),
          DrawerTile(
              icon: Icon(Icons.calendar_month),
              title: 'Calender',
              onSelect: onCalender),
          DrawerTile(
            icon: Icon(Icons.book_outlined),
            title: 'Examination',
            onSelect: onExamination,
          ),
           DrawerTile(
            icon: Icon(Icons.bus_alert),
            title: 'Transportation',
            onSelect: onTransportation,
          ),
          DrawerTile(
            icon: Icon(Icons.payments),
            title: 'Fees',
            onSelect: onFees,
          ),
          // Add more list tiles for additional items in the drawer
        ],
      ),
    );
  }
}
