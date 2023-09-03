import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locksmith/Utils/Colors.dart';
import 'package:locksmith/Widgets/HistoryCard.dart';
import 'package:locksmith/Widgets/MyText.dart';

class InventoryHistory extends StatelessWidget {
  const InventoryHistory({super.key});

  @override
  Widget build(BuildContext context) {
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
                        myText: 'Add Inventory',
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        fontColor: ColorConstant.blackColor,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                // card
                HistoryCard(
                  text1: 'Vehicle name',
                  text2: 'Vehicle model',
                  text3: 'Vehicle key',
                ),
                HistoryCard(
                  text1: 'Vehicle name',
                  text2: 'Vehicle model',
                  text3: 'Vehicle key',
                ),
                HistoryCard(
                  text1: 'Vehicle name',
                  text2: 'Vehicle model',
                  text3: 'Vehicle key',
                ),
                HistoryCard(
                  text1: 'Vehicle name',
                  text2: 'Vehicle model',
                  text3: 'Vehicle key',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
