import 'package:flutter/material.dart';
import 'package:fullcart/controllers/user_details_controller.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:fullcart/views/home_screen/shopping_page.dart';
import 'package:fullcart/views/widgets/custom_elevated_button.dart';
import 'package:fullcart/views/widgets/custom_social_account_container.dart';
import 'package:fullcart/views/widgets/custom_textField.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final UserDetailsController u =
      Get.put(UserDetailsController(), tag: UserDetailsController().toString());

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
              Column(
                children: [
                  CustomTextField(
                    controller: u.nameTextController,
                    onChanged: (value) {
                      u.name = u.nameTextController.text.obs.toString();
                    },
                    hintText: "Your Name",
                    labelText: "Your Name",
                  ),
                  CustomTextField(
                    controller: u.nameTextController,
                    width: 350,
                    hintText: '',
                    labelText: "",
                    onChanged: (value) {
                      u.nameTextController.text.obs.toString() == ""
                          ? Text("Enter Name")
                          : SizedBox();
                    },
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                controller: u.emailTextController,
                hintText: "Email",
                labelText: "Email",
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                controller: u.passwordTextController,
                hintText: "Password",
                labelText: "Password",
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
                    u.name = u.nameTextController.text;
                    u.email = u.emailTextController.text;
                    u.password = u.passwordTextController.text;
                    Get.to(ShoppingPage());
                  } else {
                    Get.snackbar("Error", "Enter Valid Details");
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
