import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locksmith/Utils/Colors.dart';
import 'package:locksmith/Widgets/ButtonWidget.dart';
import 'package:locksmith/Widgets/DetailsTextField.dart';
import 'package:locksmith/Widgets/MyText.dart';
import 'package:locksmith/Widgets/SearchItemTextField.dart';
import 'package:locksmith/Widgets/SearchTextField.dart';

class Cash extends StatelessWidget {
  const Cash({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController cash = TextEditingController();
    TextEditingController details = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height * 1.00,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.83,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(Icons.arrow_back, color: Colors.white),
                            SvgPicture.asset('assets/svg/appbar.svg'),
                            SvgPicture.asset('assets/svg/Notification.svg'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40, bottom: 12),
                        child: Row(
                          children: [
                            MyText(
                              myText: 'Cash',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontColor: ColorConstant.blackColor,
                            ),
                          ],
                        ),
                      ),
                      SearchTextField(
                        controller: cash,
                        iconData: 'cash',
                        labelText: '\$89.00',
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          MyText(
                            myText: 'Details',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontColor: ColorConstant.blackColor,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      DetailsTextField(controller: details),
                      const SizedBox(height: 50),
                      Container(
                        height: 60,
                        width: 200,
                        child: ButtonWidget(
                            buttonText: 'Done',
                            onTap: () {
                              Navigator.pop(context);
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
