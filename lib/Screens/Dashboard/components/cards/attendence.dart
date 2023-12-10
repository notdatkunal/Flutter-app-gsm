import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gurukulapp/Screens/attendenceScreen/attendenceScreen.dart';

class AttendenceCard extends StatelessWidget {
  const AttendenceCard({
    super.key,
    required this.imageUrl,
    required this.selectedColor,
    required this.selectedText,
    required this.cardText,
    required this.image,
    this.selectedIcon,
  });

  final AssetImage imageUrl;
  final String image;
  final Color selectedColor;
  final String selectedText;
  final String cardText;
  final Icon? selectedIcon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 1.0,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => AttendenceDetailScreen()));
          },
          child: Container(
              height: 120,
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        image,
                        height: 30,
                        width: 40,
                      ),
                      Text(
                        selectedText,
                        style: GoogleFonts.ubuntu(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: selectedColor),
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
