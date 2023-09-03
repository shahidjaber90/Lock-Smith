import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locksmith/Screens/Payment.dart';
import 'package:locksmith/Utils/Colors.dart';
import 'package:locksmith/Widgets/ButtonWidget.dart';
import 'package:locksmith/Widgets/DetailsTextField.dart';
import 'package:locksmith/Widgets/MyText.dart';
import 'package:locksmith/Widgets/SearchItemTextField.dart';
import 'package:locksmith/Widgets/SearchTextField.dart';

class CreateInvoice extends StatelessWidget {
  const CreateInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController acura = TextEditingController();
    TextEditingController model2008 = TextEditingController();
    TextEditingController numberOfKeys = TextEditingController();
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
                              myText: 'Create Invoice',
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              fontColor: ColorConstant.blackColor,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 75,
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(vertical: 12),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyText(
                                  myText: 'INFO',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontColor: ColorConstant.blackColor
                                      .withOpacity(0.60),
                                ),
                                const SizedBox(height: 4),
                                MyText(
                                  myText: 'Invoice#232213',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  fontColor: ColorConstant.blackColor,
                                ),
                              ],
                            ),
                            Image.asset('assets/images/pancil.png'),
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
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyText(
                            myText: 'GRAND TOTAL',
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            fontColor: ColorConstant.primaryColor,
                          ),
                          MyText(
                            myText: '\$44,000',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontColor: ColorConstant.blackColor,
                          ),
                        ],
                      ),
                      const SizedBox(height: 80),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                myText: '\$44,000',
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontColor: ColorConstant.blackColor,
                              ),
                              MyText(
                                myText: 'Due in 7 days',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontColor:
                                    ColorConstant.blackColor.withOpacity(0.40),
                              ),
                            ],
                          ),
                          Container(
                            height: 50,
                            width: 130,
                            child: ButtonWidget(
                              buttonText: 'PAY NOW',
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Payment()));
                              },
                            ),
                          ),
                        ],
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
