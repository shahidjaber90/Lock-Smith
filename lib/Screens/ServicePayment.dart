import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locksmith/Utils/Colors.dart';
import 'package:locksmith/Widgets/ButtonWidget.dart';
import 'package:locksmith/Widgets/CartTextField.dart';
import 'package:locksmith/Widgets/KeyTextField.dart';
import 'package:locksmith/Widgets/MyText.dart';

class ServicePayment extends StatelessWidget {
  const ServicePayment({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController cardName = TextEditingController();
    TextEditingController cardNumber = TextEditingController();
    TextEditingController exMonth = TextEditingController();
    TextEditingController exYear = TextEditingController();
    TextEditingController cvc = TextEditingController();
    TextEditingController serviceCharge = TextEditingController();
    TextEditingController totalCharge = TextEditingController();
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
                        myText: 'Service Payment',
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        fontColor: ColorConstant.blackColor,
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: 54,
                          width: 54,
                          child: Image.asset('assets/images/Paypal.png')),
                      SizedBox(
                          height: 54,
                          width: 54,
                          child: Image.asset('assets/images/Visa.png')),
                      SizedBox(
                        height: 72,
                        width: 80,
                        child: Stack(
                          children: [
                            Container(
                              height: 70,
                              width: 80,
                              alignment: Alignment.topCenter,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/Mastercard.png'),
                                    fit: BoxFit.cover),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 18),
                                child: Image.asset(
                                  'assets/images/zelle.png',
                                  height: 25,
                                  width: 50,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Image.asset('assets/images/Icon.png'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: 54,
                          width: 54,
                          child: Image.asset('assets/images/Diners.png')),
                      SizedBox(
                          height: 54,
                          width: 54,
                          child: Image.asset('assets/images/Amex.png')),
                    ],
                  ),
                ),
                // cardholder name
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: MyText(
                        myText: 'Cardholder name',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontColor: ColorConstant.blackColor.withOpacity(0.35),
                      ),
                    ),
                  ],
                ),
                CartTextField(
                  controller: cardName,
                  labelText: 'John Henry',
                  fontStyle: FontStyle.italic,
                  labelColor: ColorConstant.blackColor.withOpacity(0.35),
                  suffixColor: ColorConstant.greyScaleColor,
                ),
                // card Number
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: MyText(
                        myText: 'Card Number',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontColor: ColorConstant.blackColor.withOpacity(0.35),
                      ),
                    ),
                  ],
                ),
                CartTextField(
                  controller: cardNumber,
                  labelText: '**** **** **** 3947',
                  fontStyle: FontStyle.italic,
                  labelColor: ColorConstant.blackColor.withOpacity(0.35),
                  suffixColor: ColorConstant.greyScaleColor,
                ),
                // expire month, date
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: MyText(
                                myText: 'Exp Month',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontColor:
                                    ColorConstant.blackColor.withOpacity(0.35),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.42,
                          child: CartTextField(
                            controller: exMonth,
                            labelText: '12',
                            fontStyle: FontStyle.italic,
                            labelColor:
                                ColorConstant.blackColor.withOpacity(0.35),
                            suffixColor:
                                ColorConstant.blackColor.withOpacity(0.35),
                          ),
                        ),
                      ],
                    ),
                    // expire year
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: MyText(
                                myText: 'Exp Year',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontColor:
                                    ColorConstant.blackColor.withOpacity(0.35),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.42,
                          child: CartTextField(
                            controller: exYear,
                            labelText: '2024',
                            fontStyle: FontStyle.italic,
                            labelColor:
                                ColorConstant.blackColor.withOpacity(0.35),
                            suffixColor:
                                ColorConstant.blackColor.withOpacity(0.35),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: MyText(
                            myText: 'CVC',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontColor:
                                ColorConstant.blackColor.withOpacity(0.35),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.42,
                      child: CartTextField(
                        controller: cvc,
                        labelText: '123',
                        fontStyle: FontStyle.italic,
                        labelColor: ColorConstant.blackColor.withOpacity(0.35),
                        suffixColor: ColorConstant.blackColor.withOpacity(0.35),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16, top: 40),
                  child: KeyTextField(
                      controller: serviceCharge,
                      suffixText: '',
                      labelText: 'Service Charges'),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: KeyTextField(
                      controller: serviceCharge,
                      suffixText: '',
                      labelText: 'Service Charges'),
                ),
                ButtonWidget(
                    buttonText: 'Proceed to Pay',
                    onTap: () {
                      showDialogBox(context, 'Payment Successs',
                          'Your successfully ordered car\nkeys, please wait till you\nreceive order.');
                    })
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
                    Navigator.pop(context);
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

