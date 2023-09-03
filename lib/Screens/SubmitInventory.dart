import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locksmith/Screens/ViewInventory.dart';
import 'package:locksmith/Utils/Colors.dart';
import 'package:locksmith/Widgets/ButtonWidget.dart';
import 'package:locksmith/Widgets/DetailsTextField.dart';
import 'package:locksmith/Widgets/MyText.dart';
import 'package:locksmith/Widgets/SearchItemTextField.dart';
import 'package:locksmith/Widgets/SearchTextField.dart';

class SubmitInventory extends StatelessWidget {
  const SubmitInventory({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController acura = TextEditingController();
    TextEditingController model2008 = TextEditingController();
    TextEditingController numberOfKeys = TextEditingController();
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
                            Image.asset('assets/images/no.jpg'),
                            SvgPicture.asset('assets/svg/Notification.svg'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: ColorConstant.blackColor,
                              ),
                            ),
                            MyText(
                              myText: 'Add Inventory',
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              fontColor: ColorConstant.blackColor,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40, bottom: 12),
                        child: Row(
                          children: [
                            MyText(
                              myText: 'Car & Key Details',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontColor: ColorConstant.blackColor,
                            ),
                          ],
                        ),
                      ),
                      SearchTextField(
                        controller: acura,
                        iconData: 'Search',
                        labelText: 'Acura',
                      ),
                      const SizedBox(height: 15),
                      SearchItemTextField(
                        controller: model2008,
                        iconData: 'Search',
                        labelText: '2008',
                      ),
                      const SizedBox(height: 15),
                      SearchTextField(
                        controller: numberOfKeys,
                        iconData: 'keys',
                        labelText: 'Number of keys',
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
                    ],
                  ),
                ),
                ButtonWidget(
                  buttonText: 'Submit Inventory',
                  onTap: () {
                    showDialogBox(context, 'Congratulations',
                        'Your successfully add\n inventory.');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

showDialogBox(context, String title, String content) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return AlertDialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Container(
          height: 400,
          width: MediaQuery.of(context).size.width * 1.00,
          decoration: BoxDecoration(
            color: ColorConstant.whiteColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ViewInventory()));
                    // Navigator.pop(context);
                  },
                  child: SvgPicture.asset('assets/svg/done.svg')),
              const SizedBox(height: 26),
              Text(
                title,
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: ColorConstant.blackColor,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    content,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color(0XFF6C6969),
                    ),
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    maxLines: 3,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
