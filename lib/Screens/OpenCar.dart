import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locksmith/Utils/Colors.dart';
import 'package:locksmith/Widgets/MyText.dart';

class OpenCar extends StatelessWidget {
  const OpenCar({super.key});

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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 13)
                    .copyWith(bottom: 50),
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
                  ],
                ),
              ),
              SvgPicture.asset('assets/svg/unlock.svg'),
              Text(
                'Completed \nCar Unlocking process',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Your car was unlocked successfully. ',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color(0XFF414757),
                ),
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 170,
                  decoration: BoxDecoration(
                      color: ColorConstant.primaryColor.withOpacity(0.40),
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0XFF6AFFBE).withOpacity(0.25),
                          blurRadius: 14,
                          spreadRadius: 0,
                          offset: const Offset(0.0, 0.5),
                        ),
                      ]),
                  child: MyText(
                    myText: 'continue',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
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
