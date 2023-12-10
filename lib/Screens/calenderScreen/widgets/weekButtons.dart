import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gurukulapp/constraits.dart';

class WeekToggleButtons extends StatefulWidget {
  const WeekToggleButtons({super.key});

  @override
  State<WeekToggleButtons> createState() => _ToggleButtonsWithContainerState();
}

class _ToggleButtonsWithContainerState extends State<WeekToggleButtons> {
  List<bool> isSelected = [true, false, false, false, false, false];
  List<String> days = [
    'Monday',
    'Tueday',
    'Wedday',
    'Thuday',
    'Friday',
    'Saturday'
  ];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      children: List.generate(
        6,
        (index) => Container(
          width: 60,
          height: 50,
          decoration: BoxDecoration(
            color: isSelected[index]
                ? Color.fromARGB(255, 105, 55, 147)
                : Color.fromARGB(255, 164, 92, 212),
            // borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: Text(
              days[index],
              style: GoogleFonts.ubuntu(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
          ),
        ),
      ),
      // borderRadius: BorderRadius.circular(4),
      onPressed: (int index) {
        setState(() {
          isSelected[index] = !isSelected[index];
          for (int i = 0; i < isSelected.length; i++)
            if (i != index) isSelected[i] = !isSelected[index];
        });
      },
      isSelected: isSelected,
    );
  }
}
