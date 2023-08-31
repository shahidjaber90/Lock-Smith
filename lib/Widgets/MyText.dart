import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class MyText extends StatelessWidget {
  String myText;
  double fontSize;
  FontWeight fontWeight;
  Color fontColor;
  MyText({super.key, required this.myText, required this.fontSize, required this.fontWeight, required this.fontColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      myText,style: GoogleFonts.urbanist(
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: 0.5,
        color: fontColor,
      ),
    );
  }
}
