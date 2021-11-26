import 'package:flutter/material.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:fullcart/views/auth/launguage.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: ColorThemes.silver0xffc9c0b7,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
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
                          fontColor: ColorThemes.purple0xff532c46,
                          fontWeight: BoldFont.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30.0,
                    right: 10,
                  ),
                  child: ClipRRect(
                    child: Text(
                      "Love Yourself Better",
                      style: FontStyles.for62(
                        fontColor: ColorThemes.white0xffffffff,
                        fontWeight: BoldFont.bold,
                      ),
                    ).paddingZero,
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
                    GestureDetector(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Shop Now",
                            style: FontStyles.for25(
                              fontColor: ColorThemes.purple0xff532c46,
                              fontWeight: BoldFont.bold,
                            ),
                          ),
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
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://www.pngarts.com/files/3/Clothing-PNG-Photo.png",
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
