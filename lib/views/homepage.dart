import 'package:flutter/material.dart';
import 'package:fullcart/models/custom_elevated_button.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:get/get.dart';

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
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjzIaDnt-PuFeDfYWP5CFlwsjuO_0ZP8yBjw&usqp=CAU"),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: StyleFor100(
                    text: "Love  To  Shop  With  Fullcart",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomElevatedButton(
                  color: ColorThemes.orange0xffed3454,
                  height: 50,
                  width: 380,
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            height: 690,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: ColorThemes.peach0xfff2b6a5.withOpacity(0.3),
                spreadRadius: 20,
                blurRadius: 5,
                offset: Offset(10, 10),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
