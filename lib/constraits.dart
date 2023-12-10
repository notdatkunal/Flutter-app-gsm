import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// const kPrimaryColor = Color.fromARGB(255, 117, 74, 240);
// const kPrimaryLightColor = Color.fromARGB(255, 216, 204, 250);

const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);

const double defaultPadding = 16.0;

class DefaultVerticleDivider extends StatelessWidget {
  const DefaultVerticleDivider(
      {super.key,
      required this.color,
      this.thickness,
      this.horizontalPadding,
      this.verticalPadding});

  final Color color;
  final double? thickness;
  final double? horizontalPadding;
  final double? verticalPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding == null ? 8 : horizontalPadding!,
          vertical: horizontalPadding == null ? 4 : verticalPadding!),
      child: VerticalDivider(
        thickness: thickness == null ? 4 : thickness!,
        color: color,
      ),
    );
  }
}

class DefaultText extends StatelessWidget {
  const DefaultText(
      {super.key,
      required this.title,
      required this.color,
      required this.fontsize,
      this.weight});

  final String title;

  final FontWeight? weight;
  final Color color;
  final double fontsize;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      title,
      style: GoogleFonts.ubuntu(
        color: color,
        fontSize: fontsize,
        fontWeight: weight == null ? FontWeight.normal : weight!,
      ),
    );
  }
}
