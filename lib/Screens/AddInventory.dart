import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locksmith/Provider/TextFieldProvider.dart';
import 'package:locksmith/Screens/OurService.dart';
import 'package:locksmith/Utils/Colors.dart';
import 'package:locksmith/Widgets/ButtonWidget.dart';
import 'package:locksmith/Widgets/EmailTextField.dart';
import 'package:locksmith/Widgets/MyText.dart';
import 'package:locksmith/Widgets/SearchItemTextField.dart';
import 'package:locksmith/Widgets/SearchTextField.dart';
import 'package:locksmith/Widgets/SocialButton.dart';
import 'package:provider/provider.dart';

class AddInventory extends StatelessWidget {
  const AddInventory({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController vehicleSearch = TextEditingController();
    TextEditingController selectVehicle = TextEditingController();
    TextEditingController modelName = TextEditingController();
    TextEditingController productCategory = TextEditingController();
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.70,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
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
                            MyText(
                              myText: 'Vehicle Search',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontColor: ColorConstant.blackColor,
                            ),
                          ],
                        ),
                      ),
                      SearchTextField(
                        controller: vehicleSearch,
                        iconData: 'Search',
                        labelText: 'Vehicle search....',
                      ),
                      const SizedBox(height: 15),
                      SearchItemTextField(
                        controller: selectVehicle,
                        iconData: 'Search',
                        labelText: 'Select vehicle make...',
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        child: Row(
                          children: [
                            MyText(
                              myText: 'Product Search',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontColor: ColorConstant.blackColor,
                            ),
                          ],
                        ),
                      ),
                      SearchTextField(
                        controller: modelName,
                        iconData: 'Search',
                        labelText: 'Model Name....',
                      ),
                      const SizedBox(height: 15),
                      SearchTextField(
                        controller: productCategory,
                        iconData: 'Search',
                        labelText: 'Product category....',
                      ),
                      //
                    ],
                  ),
                ),
                // button add inventory
                ButtonWidget(
                    buttonText: 'Add Inentory',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OurService()));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
