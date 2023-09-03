import 'package:flutter/material.dart';
import 'package:locksmith/Utils/Colors.dart';
import 'package:locksmith/Widgets/MyText.dart';

class HistoryCard extends StatelessWidget {
  String text1;
  String text2;
  String text3;
  HistoryCard({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      margin: const EdgeInsets.only(bottom: 8),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0XFFE7E7E7)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MyText(
            myText: text1,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontColor: ColorConstant.blackColor.withOpacity(0.35),
          ),
          MyText(
            myText: text2,
            fontSize: 11,
            fontWeight: FontWeight.w400,
            fontColor: ColorConstant.blackColor.withOpacity(0.35),
          ),
          MyText(
            myText: text3,
            fontSize: 11,
            fontWeight: FontWeight.w400,
            fontColor: ColorConstant.blackColor.withOpacity(0.35),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                myText: '\$45.76',
                fontSize: 11,
                fontWeight: FontWeight.w600,
                fontColor: ColorConstant.blackColor.withOpacity(0.45),
              ),
              MyText(
                myText: '23-5-2020',
                fontSize: 11,
                fontWeight: FontWeight.w400,
                fontColor: ColorConstant.blackColor.withOpacity(0.35),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
