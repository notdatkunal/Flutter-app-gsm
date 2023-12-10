import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gurukulapp/Screens/activityScreen/components/activityScreenBanner.dart';
import 'package:gurukulapp/Screens/activityScreen/components/activityScreenCard.dart';
import 'package:gurukulapp/constraits.dart';
import 'package:gurukulapp/defaultScaffold.dart';

final List<String> activitiesData = [
  'Rohan Beating Ramesh',
  'Lots of HomeWork',
  'Fees Notice Details',
  'Sports Day Activity',
  'Football Match Today',
  'Week Days Activity',
  'Football Match Today',
  // Add more notices as needed
];

final List<String> activitiesDataDate = [
  '7th Nov 2023',
  '2nd Dec 2023',
  '17th Nov 2023',
  '7th May 2023',
  '3rd Jan 2023',
  '3rd Jan 2023',
  '9th Nov 2023',
  // Add more notices as needed
];

final List<Icon> activitiesIcon = [
  Icon(
    Icons.baby_changing_station,
    size: 50,
    color: Colors.pink,
  ),
  Icon(
    Icons.copy,
    size: 50,
    color: Colors.blue,
  ),
  Icon(
    Icons.money,
    size: 50,
    color: Colors.green,
  ),
  Icon(
    Icons.sports_baseball_rounded,
    size: 50,
    color: Colors.red,
  ),
  Icon(
    Icons.person,
    size: 50,
    color: Colors.blue,
  ),
  Icon(
    Icons.baby_changing_station,
    size: 50,
    color: Colors.green,
  ),
  Icon(
    Icons.sports_baseball,
    size: 50,
    color: Colors.red,
  ),

  // Add more notices as needed
];

final List<Color> activitiescolor = [
  Colors.pink, Colors.blue, Colors.green, Colors.red, Colors.blue, Colors.green,
  Colors.red
  // Add more notices as needed
];

class ActivityDetailScreen extends StatelessWidget {
  const ActivityDetailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultScaffold(
      title: 'Activity',
      color: kPrimaryLightColor,
      child: Column(
        children: [
          ActivityScreenBanner(),
          Expanded(
            child: ListView.builder(
                itemCount: activitiesData.length,
                itemBuilder: (context, index) {
                  return ActivityScreenCard(
                    color: activitiescolor[index],
                    imageUrl: 'pink_circle',
                    subtitle: activitiesDataDate[index],
                    title: activitiesData[index],
                    selectedIcon: activitiesIcon[index],
                  );
                }),
          )
        ],
      ),
    );
  }
}
