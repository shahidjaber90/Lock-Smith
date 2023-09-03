import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locksmith/Provider/TextFieldProvider.dart';
import 'package:locksmith/Screens/KeyProgramming.dart';
import 'package:locksmith/Screens/OpenCar.dart';
import 'package:locksmith/Screens/SubmitInventory.dart';
import 'package:locksmith/Utils/Colors.dart';
import 'package:locksmith/Widgets/ButtonWidget.dart';
import 'package:locksmith/Widgets/MyText.dart';
import 'package:locksmith/Widgets/ServiceBox.dart';
import 'package:provider/provider.dart';

class OurService extends StatelessWidget {
  OurService({super.key});

  @override
  Widget build(BuildContext context) {
    var serviceList = [
      {
        'image': 'assets/svg/openCar.svg',
        'title': 'Open\nCar',
      },
      {
        'image': 'assets/svg/engine.svg',
        'title': 'Engine Module Programming',
      },
      {
        'image': 'assets/svg/repair.svg',
        'title': 'Car\nDiagnostic',
      },
      {
        'image': 'assets/svg/key.svg',
        'title': 'Key Programming',
      },
    ];

    print(serviceList);
    final maxWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height * 1.00,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
                        MyText(
                          myText: 'Our Services',
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          fontColor: ColorConstant.blackColor,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ServiceBox(
                        title: serviceList[0]['title'].toString(),
                        imageText: serviceList[0]['image'].toString(),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const OpenCar()));
                        },
                      ),
                      ServiceBox(
                        title: serviceList[1]['title'].toString(),
                        imageText: serviceList[1]['image'].toString(),
                        onTap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ServiceBox(
                        title: serviceList[2]['title'].toString(),
                        imageText: serviceList[2]['image'].toString(),
                        onTap: () {},
                      ),
                      ServiceBox(
                        title: serviceList[3]['title'].toString(),
                        imageText: serviceList[3]['image'].toString(),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const KeyProgramming()));
                        },
                      ),
                    ],
                  ),
                ],
              ),
              ButtonWidget(
                buttonText: 'Add  Services to the Cart',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SubmitInventory()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
