import 'package:flutter/material.dart';
import 'package:fullcart/controllers/shopping_page_controller.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:get/get.dart';

import 'bottom_navigation_bars.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);
  final ShoppingPageController _shoppingPageController = Get.put(
      ShoppingPageController(),
      tag: ShoppingPageController().toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: IconButton(
                    onPressed: () {
                      Get.to(BottomNavigationBars(
                        index: 0,
                      ));
                    },
                    icon: Icon(
                      Icons.navigate_before,
                      size: 33,
                    ),
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
                  width: 20,
                ),
                Text(
                  "Cart List",
                  style: FontStyles.for30(
                    fontColor: ColorThemes.black0xff010101,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
