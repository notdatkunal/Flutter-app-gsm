import 'package:flutter/material.dart';
import 'package:gurukulapp/Screens/examinationScreen/examScreenBanner.dart';
import 'package:gurukulapp/Screens/examinationScreen/examScreenCard.dart';
import 'package:gurukulapp/constraits.dart';
import 'package:gurukulapp/defaultScaffold.dart';

class ExamScreen extends StatelessWidget {
  const ExamScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
        title: 'Examination',
        color: kPrimaryLightColor,
        child: SingleChildScrollView(
          child: Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ExamScreenBanner(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DefaultText(
                    title: 'Upcoming Exam Announcement',
                    color: Colors.black,
                    fontsize: 20,
                    weight: FontWeight.bold),
              ),
              Container(
                height: 330,
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(4),
                color: Color(0xFFfeddc7),
                child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 90,
                            padding: EdgeInsets.all(4),
                            color: Colors.white,
                            child: ExamScreenCard(
                              color: Color.fromARGB(255, 20, 132, 56),
                            )),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DefaultText(
                    title: 'Post Exam',
                    color: Colors.black,
                    fontsize: 20,
                    weight: FontWeight.bold),
              ),
              Container(
                height: 400,
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(4),
                color: Color(0xFFfeddc7),
                child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 90,
                            padding: EdgeInsets.all(4),
                            color: Colors.white,
                            child: ExamScreenCard(
                              color: const Color.fromARGB(255, 132, 27, 20),
                            )),
                      );
                    }),
              ),
            ]),
          ),
        ));
  }
}
