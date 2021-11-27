import 'package:flutter/material.dart';
import 'package:fullcart/controllers/focus_controller.dart';
import 'package:fullcart/controllers/login_controller.dart';
import 'package:fullcart/controllers/sign_up_controller.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:fullcart/views/screens/bottom_navigation_bars.dart';
import 'package:fullcart/views/widgets/custom_elevated_button.dart';
import 'package:fullcart/views/widgets/custom_social_account_container.dart';
import 'package:fullcart/views/widgets/custom_textField.dart';
import 'package:get/get.dart';

import 'forgot_password.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> formkey1 = GlobalKey<FormState>();
  final LoginController _loginController =
      Get.find(tag: LoginController().toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorThemes.white0xffffffff,
      body: Form(
        key: formkey1,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
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
                    "Log In",
                    style: FontStyles.for20(
                      fontColor: ColorThemes.black0xff010101,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GetBuilder<LoginController>(
                init: _loginController,
                builder: (_) {
                  return Focus(
                    autofocus: true,
                    child: Column(
                      children: [
                        CustomTextField(
                          onTap: () {
                            _loginController.toggle(
                              type: LoginControllerType.userLoginEmail,
                            );
                          },
                          onEditingComplete: () {
                            _loginController.toggle(
                              type: LoginControllerType.userLoginPassword,
                            );
                            FocusScope.of(context).requestFocus(
                                _loginController.focusNodeForLoginPassword);
                          },
                          focusNode: _loginController.focusNodeForLoginEmail,
                          width: 350,
                          controller: _loginController.loginEmailTextController,
                          hintText: "Email",
                          labelText: "Email",
                          onChanged: (value) {
                            _loginController.email = _loginController
                                .loginEmailTextController.text
                                .toString();
                            _loginController.update();
                          },
                          validator: (value) {
                            if (!GetUtils.isEmail(value!)) {
                              return "Enter valid email";
                            }
                          },
                        ),
                        _loginController.isFocusedLoginEmail == true
                            ? Row(
                                children: [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    _loginController
                                                .loginEmailTextController.text
                                                .toString() ==
                                            ""
                                        ? "Enter email"
                                        : "",
                                    style: FontStyles.forError(
                                      fontColor: ColorThemes.red0xfff20812,
                                    ),
                                  ),
                                ],
                              )
                            : SizedBox(),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  GetBuilder(
                    init: _loginController,
                    builder: (_) {
                      return Focus(
                        autofocus: true,
                        child: Column(
                          children: [
                            CustomTextField(
                              onTap: () {
                                _loginController.toggle(
                                  type: LoginControllerType.userLoginPassword,
                                );
                              },
                              focusNode:
                                  _loginController.focusNodeForLoginPassword,
                              onFieldSubmitted: (_) {
                                _loginController.toggle(
                                  type: null,
                                );
                                FocusScope.of(context).unfocus();
                              },
                              suffixIcon: TextButton(
                                onPressed: () {
                                  Get.to(ForgotPasswordScreen());
                                },
                                child: Text(
                                  "Forgot?",
                                  style: FontStyles.for16(
                                    fontColor: ColorThemes.grey0xFF7F8185,
                                  ),
                                ),
                              ),
                              width: 350,
                              controller:
                                  _loginController.loginPasswordTextController,
                              hintText: "Password",
                              labelText: "Password",
                              onChanged: (value) {
                                _loginController.password = _loginController
                                    .loginPasswordTextController.text
                                    .toString();
                                _loginController.update();
                              },
                              validator: (value) {
                                RegExp regex = RegExp(
                                    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                                if (!regex.hasMatch(value!)) {
                                  return "Enter valid password";
                                }
                              },
                            ),
                            _loginController.isFocusedLoginPassword == true
                                ? Row(
                                    children: [
                                      Text(
                                        _loginController
                                                    .loginPasswordTextController
                                                    .text
                                                    .toString() ==
                                                ""
                                            ? "Enter password"
                                            : "",
                                        style: FontStyles.forError(
                                          fontColor: ColorThemes.red0xfff20812,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 260,
                                      ),
                                    ],
                                  )
                                : SizedBox(),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CustomElevatedButton(
                onPressed: () {
                  if (_loginController.loginEmailTextController.text
                              .toString() !=
                          "" &&
                      _loginController.loginPasswordTextController.text
                              .toString() !=
                          "") {
                    Get.to(BottomNavigationBars());
                  } else {
                    Get.snackbar("Error", "Enter Details");
                  }

                  if (formkey1.currentState!.validate()) {
                    _loginController.email =
                        _loginController.loginEmailTextController.text;
                    _loginController.password =
                        _loginController.loginPasswordTextController.text;

                    Get.to(BottomNavigationBars());
                  } else {
                    Get.snackbar("Error", "Enter Valid Details");
                  }
                },
                buttonName: "Log In",
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
