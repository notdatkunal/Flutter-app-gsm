import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gurukulapp/constraits.dart';

class AssignmentScreenBoard extends StatefulWidget {
  const AssignmentScreenBoard({super.key});

  @override
  State<AssignmentScreenBoard> createState() {
    return _AssignmentScreenBoardState();
  }
}

class _AssignmentScreenBoardState extends State<AssignmentScreenBoard> {
  final List<String> notices = [
    'Internal Points',
    'Drawing Assignments',
    'Internal Points',
    'Drawing Assignments',
    'Internal Points',
    'Drawing Assignments',
    'Internal Points',
    'Drawing Assignments',
    'Math',
    'Science',
  ];

  final List<String> subnotices = [
    '5 Days to go',
    'Submitted 2 Days Ago',
    '5 Days to go',
    'Submitted 2 Days Ago',
    '5 Days to go',
    'Submitted 2 Days Ago',
    '5 Days to go',
    'Submitted 2 Days Ago',
    'Science',
    'Science',
  ];

  void _showDetailsDialog(String notice, String subNotice) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            notice,
            style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold),
          ),
          actions: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Details',
                      style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black)),
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          'Upload file must be in PDF Formate',
                          style: GoogleFonts.ubuntu(
                              fontWeight: FontWeight.normal, fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Assignment File',
                      style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: 130,
                        height: 30,
                        child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.upload),
                            label: Text('Upload'))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Submit',
                            style: GoogleFonts.ubuntu(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      width: MediaQuery.of(context).size.width,
      // color: kPrimaryColor,
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: notices.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      _showDetailsDialog(notices[index], subnotices[index]);
                    },
                    child: Container(
                      height: 100,
                      child: Card(
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Positioned(
                                bottom: 0,
                                child: index % 2 == 0
                                    ? Image.asset(
                                        'assets/decoration/lower.png',

                                        // color: index % 2 == 1
                                        //     ? Colors.green.shade100
                                        //     : Colors.red.shade100,
                                        height: 100,
                                      )
                                    : Image.asset(
                                        'assets/decoration/lower.png',
                                        color: Colors.green.shade100
                                            .withOpacity(0.5),
                                        height: 100,
                                      )),
                            // Positioned(
                            //     top: 0,
                            //     right: 0,
                            //     child: Image.asset(
                            //       'assets/decoration/upper.png',
                            //       color: kPrimaryLightColor,
                            //       height: 90,
                            //     )),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 18),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.message,
                                        color: index % 2 == 1
                                            ? Colors.green
                                            : Colors.red,
                                      ),
                                      Text(
                                        '9:00 A.M',
                                        style: GoogleFonts.ubuntu(
                                          fontSize: 10,
                                          color: index % 2 == 1
                                              ? Colors.green
                                              : Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: VerticalDivider(
                                      thickness: 4,
                                      color: index % 2 == 1
                                          ? Colors.green
                                          : Colors.red,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          notices[index],
                                          style: GoogleFonts.ubuntu(
                                              // color: kPrimaryColor,
                                              color: index % 2 == 1
                                                  ? Colors.green
                                                  : Colors.red,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          subnotices[index],
                                          style: GoogleFonts.ubuntu(
                                              color: index % 2 == 1
                                                  ? Colors.green.shade300
                                                  : Colors.red.shade300,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  index % 2 == 1
                                      ? Icon(
                                          Icons.check_circle,
                                          color: Colors.green,
                                          size: 50,
                                        )
                                      : Icon(
                                          Icons.circle_notifications,
                                          color: Colors.red,
                                          size: 50,
                                        ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
