import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locksmith/Screens/MyInvoice.dart';
import 'package:locksmith/Utils/Colors.dart';
import 'package:locksmith/Widgets/ButtonWidget.dart';
import 'package:locksmith/Widgets/KeyTextField.dart';
import 'package:locksmith/Widgets/MyText.dart';

class SimpleKey extends StatelessWidget {
  const SimpleKey({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController vehicleName = TextEditingController();
    TextEditingController vehicleModel = TextEditingController();
    TextEditingController key = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height * 1.00,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.82,
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
                    const SizedBox(height: 9),
                    Row(
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
                        const SizedBox(
                          width: 10,
                        ),
                        MyText(
                          myText: 'Simple Key',
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          fontColor: ColorConstant.blackColor,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    KeyTextField(
                      controller: vehicleName,
                      suffixText: 'Change',
                      labelText: 'Vehicle name',
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    KeyTextField(
                      controller: vehicleModel,
                      suffixText: 'Change',
                      labelText: 'Vehicle model',
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    KeyTextField(
                      controller: key,
                      suffixText: '',
                      labelText: 'Key',
                    ),
                  ],
                ),
              ),
              ButtonWidget(
                buttonText: 'Charge',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  MyInvoice()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
