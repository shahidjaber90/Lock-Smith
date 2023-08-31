import 'package:flutter/material.dart';
import 'package:locksmith/Provider/TextFieldProvider.dart';
import 'package:locksmith/Screens/SignUpScreen.dart';
import 'package:locksmith/Utils/Colors.dart';
import 'package:locksmith/Widgets/ButtonWidget.dart';
import 'package:locksmith/Widgets/EmailTextField.dart';
import 'package:locksmith/Widgets/MyText.dart';
import 'package:locksmith/Widgets/PasswordTextField.dart';
import 'package:locksmith/Widgets/SocialButton.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return SafeArea(
      child: Consumer<TextFieldProvider>(
        builder: (context, val, child) => Scaffold(
          backgroundColor: const Color.fromARGB(255, 244, 244, 244),
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
                    myText: 'Login to Your Account',
                    fontColor: ColorConstant.blackColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
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
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: val.isCheck,
                        onChanged: (value) {
                          val.isChecked(value);
                        },
                      ),
                      MyText(
                        myText: 'Keep me logged in',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontColor: ColorConstant.blackColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ButtonWidget(
                    buttonText: 'Sign in',
                    onTap: () {},
                  ),
                  const SizedBox(height: 5),
                  TextButton(
                      onPressed: () {},
                      child: MyText(
                        myText: 'Forgot the password?',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontColor: ColorConstant.primaryColor,
                      )),
                  const SizedBox(height: 10),
                  MyText(
                    myText: 'or continue with',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontColor: ColorConstant.greyColor,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialButton(
                        imagePath: 'facebook',
                        onTap: () {},
                      ),
                      const SizedBox(width: 20),
                      SocialButton(
                        imagePath: 'google',
                        onTap: () {},
                      ),
                      const SizedBox(width: 20),
                      SocialButton(
                        imagePath: 'apple',
                        onTap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(
                        myText: "Don’t have an account?",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontColor: ColorConstant.greyColor.withOpacity(0.50),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUpScreen()));
                          },
                          child: MyText(
                            myText: 'Sign up',
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
