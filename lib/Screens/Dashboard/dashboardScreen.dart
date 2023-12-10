import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gurukulapp/Screens/Dashboard/components/cards/attendence.dart';
import 'package:gurukulapp/Screens/Dashboard/components/lowerDashboardCard.dart';
import 'package:gurukulapp/Screens/Dashboard/components/schoolBanner.dart';

import 'package:gurukulapp/Screens/Dashboard/components/cards/activityCard.dart';
import 'package:gurukulapp/Screens/Dashboard/components/cards/feesCard.dart';
import 'package:gurukulapp/Screens/Dashboard/components/lowerCard.dart';
import 'package:gurukulapp/Screens/Dashboard/components/upperBanner.dart';
import 'package:gurukulapp/Screens/assignmentScreen/assignmentScreen.dart';
import 'package:gurukulapp/Screens/drawer.dart';
import 'package:gurukulapp/Screens/feesScreen/feesScreen.dart';
import 'package:gurukulapp/Screens/noticeScreen/noticeScreen.dart';

import 'package:gurukulapp/constraits.dart';
import 'package:gurukulapp/Screens/Dashboard/components/newAssignmentBoard.dart';

// import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() {
    return _DashboardScreenState();
  }
}

class _DashboardScreenState extends State<DashboardScreen> {
  void onNoticeBoard() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => NoticeDetailScreen()));
  }

  void onAssignment() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => AssignmentScreen()));
  }

  void OnFees() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => FeesScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color(0xFFDADCDE),
        drawer: MyDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black, // Change this color to your desired color
          ),
          elevation: 0,
          title: Text(
            'Dashboard',
            style: GoogleFonts.ubuntu(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: kPrimaryColor.withOpacity(0.5),
        body: Stack(
          children: [
            // Positioned(
            // //     child: Image.asset(
            // //   'assets/decoration/circle.png',
            // //   // color: Colors.black54.withOpacity(0.2),
            // //   // color: Colors.white,
            // //   // width: double.infinity,
            // //   // height: 100,
            // // )),
            Positioned(
                child: Image.asset(
              'assets/decoration/background.png',
              // color: Colors.black54.withOpacity(0.2),
              color: kPrimaryColor.withOpacity(0.5),
              // width: double.infinity,
              // height: 100,
            )),
            Padding(
              padding: EdgeInsets.all(defaultPadding / 2),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // SchoolBanner(),
                    UpperBanner(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AttendenceCard(
                            selectedText: 'Present',
                            cardText: 'Attendence',
                            image: 'assets/icons/tickicon.png',
                            imageUrl: AssetImage('assets/cards/green.png'),
                            selectedColor: Colors.green,
                            selectedIcon: Icon(
                              Icons.check_circle,
                              color: Colors.green,
                            )),
                        FeesCard(
                          selectedText: '20,000',
                          cardText: 'Next Dues',
                          image: 'assets/icons/ruppee.png',
                          imageUrl: AssetImage('assets/cards/redcard.png'),
                          selectedColor: Color(0xFFFF3131),
                          selectedIcon: Icon(
                            Icons.check_circle,
                            color: Color(0xFFFF3131),
                          ),
                          onFees: OnFees,
                        ),
                        ActivityCard(
                            selectedText: '70+',
                            cardText: 'Activites',
                            image: 'assets/images/notification_mobile_icon.png',
                            imageUrl: AssetImage('assets/cards/bluecard.png'),
                            selectedColor: Color.fromARGB(255, 0, 140, 255),
                            selectedIcon: Icon(
                              Icons.local_activity,
                              color: Color.fromARGB(255, 0, 140, 255),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 2,
                          child: NewAssignmentBoard(
                            title: 'Notice Board',
                            // onTap: onNoticeBoard,
                            onSelect: onNoticeBoard,
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          flex: 2,
                          child: NewAssignmentBoard(
                            title: 'Assignment',
                            onSelect: onAssignment,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // LowerCard(),
                    LowerDashboardCard()
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
