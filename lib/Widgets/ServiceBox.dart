import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locksmith/Utils/Colors.dart';
import 'package:locksmith/Widgets/MyText.dart';

class ServiceBox extends StatelessWidget {
  String title;
  String imageText;
  void Function()? onTap;
  ServiceBox({super.key, required this.title, required this.imageText, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 190,
        width: MediaQuery.of(context).size.width * 0.42,
        decoration: BoxDecoration(
          color: ColorConstant.primaryColor.withOpacity(0.40),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('$imageText'),
                  const SizedBox(height: 10),
                  MyText(
                    myText: title,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontColor: ColorConstant.whiteColor,
                    textAligns: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.only(right: 10, bottom: 5),
              height: 190,
              width: MediaQuery.of(context).size.width * 0.42,
              child: SvgPicture.asset('assets/svg/Arrow-Right.svg'),
            )
          ],
        ),
      ),
    );
  }
}
