import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locksmith/Utils/Colors.dart';
import 'package:locksmith/Widgets/MyText.dart';

class CategoryCard extends StatelessWidget {
  double height;
  double width;
  String cardText;
  String cardImage;
  void Function()? onTap;
  CategoryCard({
    super.key,
    required this.height,
    required this.width,
    required this.cardText,
    required this.cardImage,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: ColorConstant.primaryColor.withOpacity(0.40),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/svg/$cardImage.svg',
                  height: 56,
                  width: 56,
                ),
                const SizedBox(width: 16),
                MyText(
                  myText: cardText,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontColor: ColorConstant.whiteColor,
                ),
              ],
            ),
            // another widget
            Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.only(bottom: 8),
              height: height,
              width: width,
              child: SvgPicture.asset('assets/svg/Arrow-Right.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
