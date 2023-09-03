import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locksmith/Utils/Colors.dart';

class CartTextField extends StatelessWidget {
  final controller;
  String labelText;
  FontStyle fontStyle = FontStyle.normal;
  Color labelColor = Colors.black;
  Color suffixColor = ColorConstant.blackColor.withOpacity(0.35);
  CartTextField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.fontStyle,
    required this.labelColor,
    required this.suffixColor,
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
          suffixIcon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: suffixColor,
          ),
          hintText: labelText,
          hintStyle: GoogleFonts.urbanist(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: labelColor,
            fontStyle: fontStyle,
          ),
        ),
      ),
    );
  }
}
