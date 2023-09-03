import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locksmith/Screens/CreateInvoice.dart';
import 'package:locksmith/Utils/Colors.dart';
import 'package:locksmith/Widgets/ButtonWidget.dart';
import 'package:locksmith/Widgets/KeyTextField.dart';
import 'package:locksmith/Widgets/MyText.dart';

class MyInvoice extends StatelessWidget {
  MyInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController vehicleName = TextEditingController();
    TextEditingController vehicleModel = TextEditingController();
    TextEditingController key = TextEditingController();
    List chargeList = [
      {
        'text1': 'RECEIVED',
        'text2': '10',
        'text3': 'UNPAID',
      },
      {
        'text1': 'SENT',
        'text2': '12',
        'text3': 'UNPAID',
      },
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 1.00,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
              child: SingleChildScrollView(
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
                          myText: 'My Invoices',
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          fontColor: ColorConstant.blackColor,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      height: 170,
                      width: double.infinity,
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                          ),
                          itemCount: chargeList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 160,
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color:
                                    const Color(0XFF3D3D3D).withOpacity(0.09),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  MyText(
                                    myText: chargeList[index]['text1'],
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    fontColor: ColorConstant.blackColor,
                                  ),
                                  MyText(
                                    myText: chargeList[index]['text2'],
                                    fontSize: 48,
                                    fontWeight: FontWeight.w300,
                                    fontColor: ColorConstant.blackColor,
                                  ),
                                  MyText(
                                    myText: chargeList[index]['text3'],
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontColor: ColorConstant.redColor,
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    SvgPicture.asset('assets/svg/clipboard.svg'),
                    Row(
                      children: [
                        SvgPicture.asset('assets/svg/revenue.svg'),
                        const SizedBox(width: 4),
                        MyText(
                          myText: 'REVENUE',
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontColor: const Color(0XFF666666),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        SvgPicture.asset('assets/svg/Mask.svg'),
                        Positioned(
                          top: 24,
                          child: Row(
                            children: [
                              MyText(
                                myText: '\$ 807',
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                fontColor: ColorConstant.blackColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 16),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.84,
                      height: 170,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                          color: ColorConstant.whiteColor,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: ColorConstant.whiteColor,
                              blurRadius: 12,
                              spreadRadius: 2,
                              offset: const Offset(2, 2),
                            ),
                            BoxShadow(
                              color: ColorConstant.greyColor.withOpacity(0.20),
                              blurRadius: 12,
                              spreadRadius: 2,
                              offset: const Offset(-2, -2),
                            ),
                          ]),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/images/history.png'),
                              const SizedBox(width: 6),
                              MyText(
                                myText: 'HISTORY',
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontColor: const Color(0XFF666666),
                              ),
                            ],
                          ),
                          const Divider(
                            height: 36,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  MyText(
                                    myText: '1',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    fontColor: const Color(0XFF666666),
                                  ),
                                  const SizedBox(width: 12),
                                  MyText(
                                    myText: 'The Phone Company',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    fontColor: const Color(0XFF666666),
                                  ),
                                ],
                              ),
                              MyText(
                                myText: '\$ 50',
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontColor: const Color(0XFF666666),
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
            Container(
              height: MediaQuery.of(context).size.height * 1.00,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
              alignment: Alignment.bottomCenter,
              child: ButtonWidget(
                buttonText: 'Add new invoice  +',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateInvoice()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
