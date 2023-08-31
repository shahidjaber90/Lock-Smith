import 'package:flutter/material.dart';
import 'package:locksmith/Utils/Colors.dart';
import 'package:locksmith/Widgets/MyText.dart';

class ButtonWidget extends StatelessWidget {
  String buttonText;
  void Function()? onTap;
  ButtonWidget({
    super.key,
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorConstant.primaryColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: MyText(
          myText: buttonText,
          fontSize: 16,
          fontWeight: FontWeight.w700,
          fontColor: ColorConstant.whiteColor,
        ),
      ),
    );
  }
}
