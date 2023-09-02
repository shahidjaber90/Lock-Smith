import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locksmith/Screens/Payment.dart';
import 'package:locksmith/Utils/Colors.dart';
import 'package:locksmith/Widgets/ButtonWidget.dart';
import 'package:locksmith/Widgets/MyText.dart';
import 'package:locksmith/Widgets/SearchItemTextField.dart';
import 'package:locksmith/Widgets/SearchTextField.dart';

class ServicePayment extends StatelessWidget {
  const ServicePayment({super.key});

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
                            SvgPicture.asset('assets/svg/appbar.svg'),
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
                            Image.asset('assets/images/Paypal.png'),
                            Image.asset('assets/images/Visa.png'),
                            Image.asset('assets/images/Mastercard.png'),
                            Image.asset('assets/images/Diners.png'),
                            Image.asset('assets/images/Amex.png'),
                          ],
                        ),
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
