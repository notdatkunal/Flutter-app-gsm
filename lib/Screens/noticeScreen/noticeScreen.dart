import 'package:flutter/material.dart';
import 'package:gurukulapp/Screens/noticeScreen/components/noticeScreenBanner.dart';
import 'package:gurukulapp/Screens/noticeScreen/components/noticeScreenCard.dart';
import 'package:gurukulapp/constraits.dart';
import 'package:gurukulapp/defaultScaffold.dart';

final List<String> Data = [
  'Rohan Beating Ramesh',
  'Lots of HomeWork',
  'Fees Notice Details',
  'Sports Day Activity',
  'Fees Notice Details',
  'Football Match Today',
  'Week Days Activity',
  'Football Match Today',
  'Football Match Today',
  // Add more notices as needed
];

final List<String> DateData = [
  '7th Nov 2023',
  '2nd Dec 2023',
  '17th Nov 2023',
  '7th May 2023',
  '3rd Jan 2023',
  '3rd Jan 2023',
  '3rd Jan 2023',
  '9th Nov 2023',
  '9th Nov 2023',
  // Add more notices as needed
];

class NoticeDetailScreen extends StatelessWidget {
  const NoticeDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultScaffold(
        title: 'Notice',
        color: kPrimaryLightColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NoticeScreenBanner(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DefaultText(
                  title: '3 New Notices',
                  color: Colors.black,
                  fontsize: 20,
                  weight: FontWeight.bold),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: Data.length,
                    itemBuilder: (context, index) {
                      return NoticeScreenCard(
                          title: Data[index],
                          date: DateData[index],
                          color: index >= 3
                              ? Colors.red
                              : const Color.fromARGB(255, 4, 144, 8));
                    }))
          ],
        ));
  }
}
