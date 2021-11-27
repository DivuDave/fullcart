import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fullcart/controllers/forgot_password_controller.dart';
import 'package:fullcart/controllers/login_controller.dart';
import 'package:fullcart/controllers/otp_controller.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:fullcart/views/screens/home_screen/shopping_page.dart';
import 'package:fullcart/views/widgets/custom_elevated_button.dart';
import 'package:fullcart/views/widgets/custom_otp_field.dart';
import 'package:get/get.dart';

import 'forgot_password.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({Key? key}) : super(key: key);
  final ForgotPasswordController _forgotPasswordController =
      Get.find(tag: LoginController().toString());
  final OtpController _otpController =
      Get.put(OtpController(), tag: OtpController().toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorThemes.white0xffffffff,
      body: SingleChildScrollView(
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
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    "Enter the Code",
                    style: FontStyles.for20(
                      fontColor: ColorThemes.black0xff010101,
                    ),
                  ),
                  Text(
                    "to Verify Your Phone",
                    style: FontStyles.for20(
                      fontColor: ColorThemes.black0xff010101,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "we have sent you an SMS with a code to",
                    style: FontStyles.for16(
                      fontColor: ColorThemes.black0xff010101,
                    ),
                  ),
                  GetBuilder(
                    init: _forgotPasswordController,
                    builder: (_) {
                      return Text(
                        "the number ${_forgotPasswordController.forgotPasswordPhoneNumberController.text}",
                        style: FontStyles.for16(
                          fontColor: ColorThemes.black0xff010101,
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        CustomOtpField(),
                        SizedBox(
                          height: 130,
                        ),
                        TextButton(
                          onPressed: () {
                            Get.to(ForgotPasswordScreen());
                          },
                          child: Text(
                            "send a new code",
                            style: FontStyles.for16(
                              fontColor: ColorThemes.black0xff010101,
                              decoration: TextDecoration.underline,
                              fontWeight: BoldFont.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        CustomElevatedButton(
                          onPressed: () {
                            _otpController.first = _otpController
                                .firstCharacterController.text
                                .toString();
                            _otpController.second = _otpController
                                .secondCharacterController.text
                                .toString();
                            _otpController.third = _otpController
                                .thirdCharacterController.text
                                .toString();
                            _otpController.fourth = _otpController
                                .fourthCharacterController.text
                                .toString();
                            if (_otpController.first != "" &&
                                _otpController.second != "" &&
                                _otpController.third != "" &&
                                _otpController.fourth != "") {
                              Get.to(ShoppingPage());
                              Get.snackbar(
                                "Otp",
                                "Your Otp is ${_otpController.first + _otpController.second + _otpController.third + _otpController.fourth}",
                              );
                            } else {
                              Get.snackbar("Eror", "Enter Otp");
                            }
                          },
                          buttonName: "Next",
                          color: ColorThemes.black0xff010101,
                          height: 50,
                          width: 100,
                          radius: 0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
