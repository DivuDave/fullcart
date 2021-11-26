import 'package:flutter/material.dart';
import 'package:fullcart/controllers/focus_controller.dart';
import 'package:fullcart/controllers/sign_up_controller.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:fullcart/views/screens/bottom_navigation_bars.dart';
import 'package:fullcart/views/widgets/custom_elevated_button.dart';
import 'package:fullcart/views/widgets/custom_social_account_container.dart';
import 'package:fullcart/views/widgets/custom_textField.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({
    Key? key,
  }) : super(key: key);
  final SignUpController _signUpController =
      Get.find(tag: SignUpController().toString());

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorThemes.white0xffffffff,
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.navigate_before,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    "Sign Up",
                    style: FontStyles.for20(
                      fontColor: ColorThemes.black0xff010101,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GetBuilder<SignUpController>(
                init: _signUpController,
                builder: (_) {
                  return Focus(
                    autofocus: true,
                    child: Column(
                      children: [
                        CustomTextField(
                          onEditingComplete: () {
                            _signUpController.isFocusedName = false;
                            return FocusScope.of(context).requestFocus(
                              _signUpController.focusNodeForEmail,
                            );
                          },
                          focusNode: _signUpController.focusNodeForName,
                          width: 350,
                          controller: _signUpController.nameTextController,
                          onChanged: (value) {
                            _signUpController.name = _signUpController
                                .nameTextController.text
                                .toString();
                            _signUpController.update();
                          },
                          hintText: "Your Name",
                          labelText: "Your Name",
                          validator: (value) {
                            if (!GetUtils.isAlphabetOnly(value!)) {
                              return "Enter valid name";
                            }
                          },
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              _signUpController.nameTextController.text
                                          .toString() ==
                                      ""
                                  ? "Enter name"
                                  : "",
                              style: FontStyles.forError(
                                fontColor: ColorThemes.red0xfff20812,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Focus(
                autofocus: true,
                child: Column(
                  children: [
                    CustomTextField(
                      onEditingComplete: () {
                        return FocusScope.of(context).requestFocus(
                            _signUpController.focusNodeForPassword);
                      },
                      focusNode: _signUpController.focusNodeForEmail,
                      width: 350,
                      controller: _signUpController.emailTextController,
                      hintText: "Email",
                      labelText: "Email",
                      onChanged: (value) {
                        _signUpController.email = _signUpController
                            .emailTextController.text
                            .toString();
                        _signUpController.update();
                      },
                      validator: (value) {
                        if (!GetUtils.isEmail(value!)) {
                          return "Enter valid email";
                        }
                      },
                    ),
                    GetBuilder<SignUpController>(
                      init: _signUpController,
                      builder: (_) {
                        return Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              _signUpController.emailTextController.text
                                          .toString() ==
                                      ""
                                  ? "Enter email"
                                  : "",
                              style: FontStyles.forError(
                                fontColor: ColorThemes.red0xfff20812,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Focus(
                autofocus: true,
                child: Column(
                  children: [
                    CustomTextField(
                      onFieldSubmitted: (_) {
                        return FocusScope.of(context).unfocus();
                      },
                      focusNode: _signUpController.focusNodeForPassword,
                      width: 350,
                      controller: _signUpController.passwordTextController,
                      hintText: "Password",
                      labelText: "Password",
                      onChanged: (value) {
                        _signUpController.password = _signUpController
                            .passwordTextController.text
                            .toString();
                        _signUpController.update();
                      },
                      validator: (value) {
                        RegExp regex = RegExp(
                            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                        if (!regex.hasMatch(value!)) {
                          return "Enter valid password";
                        }
                      },
                    ),
                    GetBuilder(
                      init: _signUpController,
                      builder: (_) {
                        return Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              _signUpController.passwordTextController.text
                                          .toString() ==
                                      ""
                                  ? "Enter password"
                                  : "",
                              style: FontStyles.forError(
                                fontColor: ColorThemes.red0xfff20812,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Terms of Use",
                    style: FontStyles.for14(
                      fontColor: ColorThemes.darkGrey0xFF4A4B4E,
                    ),
                  ),
                  Text(
                    " and",
                    style: FontStyles.for14(
                      fontColor: ColorThemes.grey0xFF7F8185,
                    ),
                  ),
                  Text(
                    " Privacy Policy",
                    style: FontStyles.for14(
                      fontColor: ColorThemes.darkGrey0xFF4A4B4E,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CustomElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    if (_signUpController.nameTextController.text.toString() !=
                            "" &&
                        _signUpController.passwordTextController.text
                                .toString() !=
                            "" &&
                        _signUpController.emailTextController.text.toString() !=
                            "") {
                      Get.to(BottomNavigationBars(
                        index: 0,
                      ));
                    } else {
                      Get.snackbar("Error", "Enter Details");
                    }
                  }
                },
                buttonName: "Sign Up",
                color: ColorThemes.black0xff010101,
                height: 50,
                width: 350,
                radius: 0,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Or sign up with social account",
                style: FontStyles.for14(
                  fontColor: ColorThemes.black0xff010101,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomSocialAccountContainer(
                    color: ColorThemes.facebookBlue0xff0279fc,
                    icon: Icons.facebook,
                  ),
                  CustomSocialAccountContainer(
                    color: ColorThemes.twitterBlue0xff59c8fc,
                    icon: Icons.shop_two,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
