import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locksmith/Screens/Cash.dart';
import 'package:locksmith/Screens/InventoryHistory.dart';
import 'package:locksmith/Screens/KeyProgrammingHistory.dart';
import 'package:locksmith/Screens/OpenCarHistory.dart';
import 'package:locksmith/Screens/ServicePayment.dart';
import 'package:locksmith/Utils/Colors.dart';
import 'package:locksmith/Widgets/MyText.dart';

class ViewInventory extends StatelessWidget {
  const ViewInventory({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height * 1.00,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
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
              const SizedBox(height: 80),
              Image.asset('assets/images/logo.png'),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OpenCarHistory()));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 260,
                  decoration: BoxDecoration(
                    color: ColorConstant.primaryColor.withOpacity(0.40),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: MyText(
                    myText: 'Open car History',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontColor: ColorConstant.whiteColor,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InventoryHistory()));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 260,
                  decoration: BoxDecoration(
                    color: ColorConstant.primaryColor.withOpacity(0.40),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: MyText(
                    myText: 'Inventory History',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontColor: ColorConstant.whiteColor,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const KeyProgrammingHistory()));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 260,
                  decoration: BoxDecoration(
                    color: ColorConstant.primaryColor.withOpacity(0.40),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: MyText(
                    myText: 'Key Programming History',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontColor: ColorConstant.whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
