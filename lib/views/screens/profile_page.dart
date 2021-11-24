import 'package:flutter/material.dart';
import 'package:fullcart/controllers/sign_up_controller.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  final SignUpController _signUpController =
      Get.put(SignUpController(), tag: SignUpController().toString());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: ColorThemes.grey0xFF7F8185,
        ),
        centerTitle: true,
        backgroundColor: ColorThemes.white0xffffffff,
        title: Text(
          "Profile",
          style: FontStyles.for20(P
            fontColor: ColorThemes.grey0xFF7F8185,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4mZWAZ6H7rMwse_xz7xZCX6a4blTjTD_eSQ&usqp=CAU",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Assar Jani",
                      style: FontStyles.for20(
                        fontColor: ColorThemes.black0xff010101,
                      ),
                    ),
                  ],
                ),
              ),
              height: 200,
              width: 340,
              decoration: BoxDecoration(
                color: ColorThemes.white0xffffffff,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: ColorThemes.grey0xFF7F8185,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Icon(
                Icons.person,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Assar Jani",
                style: FontStyles.for20(
                  fontColor: ColorThemes.black0xff010101,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Icon(
                Icons.email,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "AssarBaloch@gmail.com",
                style: FontStyles.for20(
                  fontColor: ColorThemes.black0xff010101,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Icon(
                Icons.lock,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "123456789",
                style: FontStyles.for20(
                  fontColor: ColorThemes.black0xff010101,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
