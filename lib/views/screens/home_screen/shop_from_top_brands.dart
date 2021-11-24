import 'package:flutter/material.dart';
import 'package:fullcart/controllers/shopping_page_controller.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:fullcart/views/screens/home_screen/trending.dart';
import 'package:fullcart/views/screens/shipping.dart';
import 'package:get/get.dart';

import 'best_products.dart';

class ShopFromTopBrands extends StatelessWidget {
  ShopFromTopBrands({Key? key}) : super(key: key);
  final ShoppingPageController _shoppingPageController =
      ShoppingPageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorThemes.pinks0xfff397a8,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB-avUGHp54ptB1LN0BCvuxs-kKHZvh5D9ApzrHqu15xV7Q68guyiBEWnYTvVcLftr9aU&usqp=CAU",
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.navigate_before,
                      size: 33,
                      color: ColorThemes.white0xffffffff,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Shop from the",
                          style: FontStyles.for30(
                            fontColor: ColorThemes.white0xffffffff,
                          ),
                        ),
                        Text(
                          "top brands",
                          style: FontStyles.for30(
                            fontColor: ColorThemes.white0xffffffff,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Icon(
                    Icons.filter_list,
                    color: ColorThemes.white0xffffffff,
                    size: 33,
                  ),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dion",
                          style: FontStyles.for20(
                            fontColor: ColorThemes.white0xffffffff,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "240 Popular items",
                          style: FontStyles.for16(
                            fontColor: ColorThemes.white0xffffffff,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(Trending());
                    },
                    child: Text(
                      "View all",
                      style: FontStyles.for20(
                        fontColor: ColorThemes.white0xffffffff,
                        fontWeight: BoldFont.regular,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: _shoppingPageController.topBrandsList,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Channel",
                          style: FontStyles.for20(
                            fontColor: ColorThemes.white0xffffffff,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "240 Popular items",
                          style: FontStyles.for16(
                            fontColor: ColorThemes.white0xffffffff,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(
                        BestProducts(),
                      );
                    },
                    child: Text(
                      "View all",
                      style: FontStyles.for20(
                        fontColor: ColorThemes.white0xffffffff,
                        fontWeight: BoldFont.regular,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: _shoppingPageController.topBrandsList,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
