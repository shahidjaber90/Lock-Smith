import 'package:flutter/material.dart';
import 'package:locksmith/Utils/Colors.dart';

class DetailsTextField extends StatelessWidget {
  final controller;
  const DetailsTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        controller: controller,
        maxLines: 7,
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
        ),
      ),
    );
  }
}
