import 'package:flutter/material.dart';
import 'package:locksmith/Provider/TextFieldProvider.dart';
import 'package:locksmith/Screens/LoginScreen.dart';
import 'package:locksmith/Utils/Colors.dart';
import 'package:locksmith/Widgets/ButtonWidget.dart';
import 'package:locksmith/Widgets/EmailTextField.dart';
import 'package:locksmith/Widgets/MyText.dart';
import 'package:locksmith/Widgets/PasswordTextField.dart';
import 'package:locksmith/Widgets/SocialButton.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
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
                    myText: 'Create Your Account',
                    fontColor: ColorConstant.blackColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                  const SizedBox(height: 20),
                  EmailTextField(
                    controller: nameController,
                    iconData:
                        Icon(Icons.person, color: ColorConstant.darkGreyColor),
                    labelText: 'Full Name',
                  ),
                  const SizedBox(height: 20),
                  EmailTextField(
                    controller: emailController,
                    iconData:
                        Icon(Icons.email, color: ColorConstant.darkGreyColor),
                    labelText: 'Your email...',
                  ),
                  const SizedBox(height: 20),
                  PasswordTextField(
                    controller: passwordController,
                    iconData: Icon(
                      Icons.lock,
                      color: ColorConstant.darkGreyColor,
                    ),
                    labelText: 'Password...',
                    isObscure: val.isObsecure,
                    onTap: val.isObsecureMethod,
                  ),
                  const SizedBox(height: 20),
                  PasswordTextField(
                    controller: confirmPasswordController,
                    iconData: Icon(
                      Icons.lock,
                      color: ColorConstant.darkGreyColor,
                    ),
                    labelText: 'Confirm Password...',
                    isObscure: val.isObsecure2,
                    onTap: val.isObsecureMethod2,
                  ),
                  const SizedBox(height: 20),
                  ButtonWidget(
                    buttonText: 'Sign un',
                    onTap: () {},
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(
                        myText: "Already have an account?",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontColor: ColorConstant.greyColor.withOpacity(0.50),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          child: MyText(
                            myText: 'Sign in',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontColor: ColorConstant.primaryColor,
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
