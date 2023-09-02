import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locksmith/Utils/Colors.dart';

class KeyTextField extends StatelessWidget {
  final controller;
  String suffixText;
  String labelText;
  KeyTextField({
    super.key,
    required this.controller,
    required this.suffixText,
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
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 12, top: 15),
            child: Text(
              suffixText,
              style: GoogleFonts.urbanist(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: const Color(0XFF424242).withOpacity(0.35),
              ),
            ),
          ),
          hintText: labelText,
          hintStyle: GoogleFonts.urbanist(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: const Color(0XFF000000),
          ),
        ),
      ),
    );
  }
}
