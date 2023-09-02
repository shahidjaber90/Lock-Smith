import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locksmith/Utils/Colors.dart';

class SearchTextField extends StatelessWidget {
  final controller;
  String iconData;
  String labelText;
  SearchTextField({
    super.key,
    required this.controller,
    required this.iconData,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: ColorConstant.greyScaleColor,
            prefixIcon: Image.asset('assets/images/$iconData.png'),
            hintText: labelText,
            hintStyle: GoogleFonts.urbanist(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: const Color(0XFFBDBDBD),
            )),
      ),
    );
  }
}
