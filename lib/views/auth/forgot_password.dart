import 'package:flutter/material.dart';
import 'package:fullcart/controllers/forgot_password_controller.dart';
import 'package:fullcart/controllers/login_controller.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:fullcart/views/auth/otp_screen.dart';
import 'package:fullcart/views/home_screen/shopping_page.dart';
import 'package:fullcart/views/widgets/custom_elevated_button.dart';
import 'package:fullcart/views/widgets/custom_textField.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> formkey2 = GlobalKey<FormState>();
  final ForgotPasswordController _forgotPasswordController =
      Get.put(ForgotPasswordController(), tag: LoginController().toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorThemes.white0xffffffff,
      body: Form(
        key: formkey2,
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
                  width: 80,
                ),
                Text(
                  "Forgot Password?",
                  style: FontStyles.for20(
                    fontColor: ColorThemes.black0xff010101,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                """
if you need help resetting your password, 
we can help by sending a link to reset it.""",
                style: FontStyles.for16(
                  fontColor: ColorThemes.grey0xFF7F8185,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 35,
                    ),
                    Column(
                      children: [
                        CustomTextField(
                          prefixIcon: Icon(
                            Icons.phone_android,
                            color: ColorThemes.black0xff010101,
                          ),
                          width: 350,
                          controller: _forgotPasswordController
                              .forgotPasswordPhoneNumberController,
                          hintText: "Phone",
                          labelText: "Phone",
                          onChanged: (value) {
                            _forgotPasswordController.phoneNumber =
                                _forgotPasswordController
                                    .forgotPasswordPhoneNumberController.text
                                    .toString();
                            _forgotPasswordController.update();
                          },
                          validator: (value) {
                            if (!GetUtils.isPhoneNumber(value!)) {
                              return "Enter valid Phone Number";
                            }
                          },
                        ),
                        GetBuilder(
                          init: _forgotPasswordController,
                          builder: (_) {
                            return Text(
                              _forgotPasswordController
                                          .forgotPasswordPhoneNumberController
                                          .text
                                          .toString() ==
                                      ""
                                  ? "Enter Phone Number"
                                  : "",
                              style: FontStyles.forError(
                                fontColor: ColorThemes.red0xfff20812,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                CustomElevatedButton(
                  onPressed: () {
                    if (formkey2.currentState!.validate()) {
                      if (_forgotPasswordController
                              .forgotPasswordPhoneNumberController.text
                              .toString() !=
                          "") {
                        Get.to(OtpScreen());
                      } else {
                        Get.snackbar("Error", "Enter Details");
                      }
                      _forgotPasswordController.phoneNumber =
                          _forgotPasswordController
                              .forgotPasswordPhoneNumberController.text;

                      Get.to(OtpScreen());
                    } else {
                      Get.snackbar("Error", "Enter Valid Details");
                    }
                  },
                  buttonName: "Send",
                  color: ColorThemes.black0xff010101,
                  height: 50,
                  width: 350,
                  radius: 0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
