import 'package:flutter/material.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:fullcart/views/auth/launguage.dart';
import 'package:get/get.dart';

import 'auth/sign_up_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 690,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: ColorThemes.silver0xffc9c0b7,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    left: 30.0,
                    right: 10,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Fullcart",
                        style: FontStyles.for25(
                          fontColor: ColorThemes.pink0xffed3454,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30.0,
                    right: 10,
                  ),
                  child: Text(
                    "Love Yourself Better",
                    style: FontStyles.for62(
                      fontColor: ColorThemes.white0xffffffff,
                    ),
                  ),
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
                            "Shop Now",
                            style: FontStyles.for20(
                              fontColor: ColorThemes.pink0xffed3454,
                            ),
                          ),
                          Container(
                            width: 90,
                            height: 3,
                            color: ColorThemes.white0xffffffff,
                          )
                        ],
                      ),
                      onTap: () {
                        Get.to(Language());
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 350,
            child: Container(
              height: 500,
              width: 415,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8OsmD5bL128YE99_R2LJdGUjFfK8_oyxopw&usqp=CAU"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
