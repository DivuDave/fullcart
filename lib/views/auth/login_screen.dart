import 'package:flutter/material.dart';
import 'package:fullcart/controllers/user_details_controller.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:fullcart/views/home_screen/shopping_page.dart';
import 'package:fullcart/views/widgets/custom_elevated_button.dart';
import 'package:fullcart/views/widgets/custom_social_account_container.dart';
import 'package:fullcart/views/widgets/custom_textField.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> formkey1 = GlobalKey<FormState>();
  final UserDetailsController u =
      Get.find(tag: UserDetailsController().toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorThemes.white0xffffffff,
      body: Form(
        key: formkey1,
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
              CustomTextField(
                width: 350,
                controller: u.emailTextController,
                hintText: "Email",
                labelText: "Email",
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 35,
                  ),
                  CustomTextField(
                    width: 250,
                    controller: u.passwordTextController,
                    hintText: "Password",
                    labelText: "Password",
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot?",
                      style: FontStyles.for16(
                        fontColor: ColorThemes.grey0xFF7F8185,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CustomElevatedButton(
                onPressed: () {
                  if (formkey1.currentState!.validate()) {
                    u.name = u.nameTextController.text;
                    u.email = u.emailTextController.text;
                    u.password = u.passwordTextController.text;
                    Get.to(ShoppingPage());
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
