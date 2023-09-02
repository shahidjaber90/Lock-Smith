import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locksmith/Provider/TextFieldProvider.dart';
import 'package:locksmith/Utils/Colors.dart';
import 'package:provider/provider.dart';

class PasswordTextField extends StatelessWidget {
  final controller;
  Icon iconData;
  String labelText;
  final isObscure;
  void Function()? onTap;
  PasswordTextField({
    super.key,
    required this.controller,
    required this.iconData,
    required this.labelText,
    required this.isObscure,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<TextFieldProvider>(
      builder: (context, value, child) => TextField(
        controller: controller,
        obscureText: isObscure,
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
          prefixIcon: iconData,
          hintText: labelText,
          hintStyle: GoogleFonts.urbanist(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: ColorConstant.darkGreyColor,
          ),
          suffixIcon: IconButton(
              onPressed: onTap,
              icon: isObscure
                  ? Icon(
                      Icons.visibility_off,
                      color: ColorConstant.darkGreyColor,
                    )
                  : Icon(
                      Icons.visibility,
                      color: ColorConstant.primaryColor,
                    )),
        ),
      ),
    );
  }
}
