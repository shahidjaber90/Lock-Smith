import 'package:flutter/material.dart';
import 'package:locksmith/Provider/TextFieldProvider.dart';
import 'package:locksmith/Screens/AddInventory.dart';
import 'package:locksmith/Utils/Colors.dart';
import 'package:locksmith/Widgets/CategoryCard.dart';
import 'package:locksmith/Widgets/MyText.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Consumer<TextFieldProvider>(
        builder: (context, val, child) => Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            height: MediaQuery.of(context).size.height * 1.00,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                  ),
                  MyText(
                    myText: 'Welcome John!\nWhat would you like to do today?',
                    fontColor: ColorConstant.blackColor,
                    fontSize: maxWidth < 361 ? 19 : 22,
                    fontWeight: FontWeight.w700,
                    textAligns: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  CategoryCard(
                    height: 140,
                    width: double.infinity,
                    cardText: 'Add Inventory',
                    cardImage: 'inventory',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddInventory()));
                    },
                  ),
                  const SizedBox(height: 20),
                  CategoryCard(
                    height: 140,
                    width: double.infinity,
                    cardText: 'Car Services',
                    cardImage: 'repair',
                    onTap: () {},
                  ),
                  const SizedBox(height: 20),
                  CategoryCard(
                    height: 140,
                    width: double.infinity,
                    cardText: 'Car Services',
                    cardImage: 'history',
                    onTap: () {},
                  ),
                  //
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
