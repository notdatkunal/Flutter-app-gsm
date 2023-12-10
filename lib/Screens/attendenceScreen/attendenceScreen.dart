// AssignmentScreen.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gurukulapp/Screens/attendenceScreen/attendencePieChart.dart';
import 'package:gurukulapp/Screens/attendenceScreen/attendenceToggleButtons.dart';
import 'package:gurukulapp/Screens/attendenceScreen/heatMap/attendanceHeatMap.dart';
import 'package:gurukulapp/constraits.dart';

class AttendenceDetailScreen extends StatelessWidget {
  AttendenceDetailScreen({super.key});

  final int daysPresent = 85;
  final int daysAbsent = 15;

  final Map<DateTime, int> attendanceData = {
    DateTime(2023, 12, 1): 2,
    DateTime(2023, 12, 2): 1,
    DateTime(2024, 1, 1): 3,
    DateTime(2024, 1, 2): 2,
    // Add more entries for each day and month
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Attendence',
          style: GoogleFonts.ubuntu(
              fontWeight: FontWeight.bold, color: Colors.black),
        ),
        iconTheme: IconThemeData(
          color: Colors.black, // Change this color to your desired color
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Your other widgets...
            SizedBox(
              height: 16,
            ),
            AttendenceToggleButtons(),
            SizedBox(
              height: 16,
            ),
            Container(
              width: 360,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Stack(
                children: [
                  // Positioned(
                  //     top: 0,
                  //     right: 0,
                  //     child: Image.asset(
                  //       'assets/decoration/upper.png',
                  //       color: Colors.green.withOpacity(0.5),
                  //       // height: 100,
                  //     )),
                  // Positioned(
                  //   bottom: 0,
                  //   child: Image.asset(
                  //     'assets/decoration/lower.png',
                  //     color: Colors.red.withOpacity(0.5),

                  //     // color: index % 2 == 1
                  //     //     ? Colors.green.shade100
                  //     //     : Colors.red.shade100,
                  //     // height: 90,
                  //   ),
                  // ),
                  AttendancePieChart(
                      daysPresent: daysPresent, daysAbsent: daysAbsent),
                ],
              ),
            ),

            // HeatmapCalendar(attendanceData: attendanceData),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  height: 370,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Attendance Heat Map',
                          style: GoogleFonts.ubuntu(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(child: AttendanceHeatmap()),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
