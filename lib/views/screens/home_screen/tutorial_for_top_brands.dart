import 'package:flutter/material.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:fullcart/views/auth/login_screen.dart';
import 'package:fullcart/views/auth/sign_up_screen.dart';
import 'package:fullcart/views/widgets/custom_top_brands_container.dart';
import 'package:get/get.dart';

class TutorialForTopBrands extends StatelessWidget {
  TutorialForTopBrands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorThemes.black0xff010101,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(
                100,
              ),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomTopBrandsContainer(
                    width: 340,
                    url:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTy5DBuGBw-uFICPdUQyumA-9Q6lgri3KAEsw&usqp=CAU",
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CustomTopBrandsContainer(
                    width: 340,
                    radius: 0,
                    url:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN2t2_9kNdHh5ru7YdrUYPOrXu-vKY-09BkQ&usqp=CAU",
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CustomTopBrandsContainer(
                    width: 340,
                    radius: 0,
                    url:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBWznDmsN_09mKPDASJM_FlQKoCeSouh6L1Q&usqp=CAU",
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CustomTopBrandsContainer(
                    width: 340,
                    radius: 0,
                    url:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSW5oFFXDEW-TS_LjptdOn02U3ByC-kT_HYsH9OSNPDDf33g5VpUFYBA0DfMrL-2pblruo&usqp=CAU",
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CustomTopBrandsContainer(
                    width: 340,
                    radius: 0,
                    url:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT27QBhJ6ZaodleZboVFoFATalwi-dzQ1fUAg&usqp=CAU",
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CustomTopBrandsContainer(
                    width: 340,
                    radius: 0,
                    url:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrpvxAFHCniDOWY3aUxuewjqo98QFvtg1I9A&usqp=CAU",
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Text(
                "Explore top",
                style: FontStyles.for30(
                  fontColor: ColorThemes.white0xffffffff,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Text(
                "brands for you",
                style: FontStyles.for30(
                  fontColor: ColorThemes.white0xffffffff,
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
              Text(
                "Discover products easily by swiping",
                style: FontStyles.for16(
                  fontColor: ColorThemes.grey0xFF7F8185,
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Text(
                "from one brand to another",
                style: FontStyles.for16(
                  fontColor: ColorThemes.grey0xFF7F8185,
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
              GestureDetector(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign up free account",
                      style: FontStyles.for20(
                        fontColor: ColorThemes.white0xffffffff,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: ColorThemes.white0xffffffff,
                      height: 3,
                      width: 185,
                    ),
                  ],
                ),
                onTap: () {
                  Get.to(SignUpScreen());
                },
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            children: [
              SizedBox(
                width: 40,
              ),
              GestureDetector(
                child: Text(
                  "Log in",
                  style: FontStyles.for16(
                    fontColor: ColorThemes.white0xffffffff,
                  ),
                ),
                onTap: () {
                  Get.to(LoginScreen());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
