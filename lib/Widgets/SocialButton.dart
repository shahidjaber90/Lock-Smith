import 'package:flutter/material.dart';
import 'package:locksmith/Utils/Colors.dart';

class SocialButton extends StatelessWidget {
  String imagePath;
  void Function()? onTap;
  SocialButton({
    super.key,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: 88,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: ColorConstant.greyColor.withOpacity(0.10),
          ),
        ),
        child: Image.asset('assets/images/$imagePath.png'),
      ),
    );
  }
}
