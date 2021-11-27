import 'package:flutter/material.dart';
import 'package:fullcart/controllers/shopping_page_controller.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:fullcart/views/screens/home_screen/shop_from_top_brands.dart';
import 'package:fullcart/views/screens/home_screen/top_brands_collection.dart';
import 'package:fullcart/views/widgets/custom_top_brands_container.dart';
import 'package:get/get.dart';

class ShoppingPage extends StatelessWidget {
  ShoppingPage({Key? key}) : super(key: key);
  final ShoppingPageController _shoppingPageController = Get.put(
      ShoppingPageController(),
      tag: ShoppingPageController().toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorThemes.offWhite0xFFF3F3F3,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                CustomTopBrandsContainer(
                  width: 420,
                  radius: 100,
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZvg5aKsV4iO5cTeFy4HSa2jzY1nfiA_Z5HA&usqp=CAU",
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        "Just Arrivals",
                        style: FontStyles.for20(
                          fontColor: ColorThemes.black0xff010101,
                          fontWeight: BoldFont.bold,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(TopBrandsCollection());
                      },
                      child: Text(
                        "See More...",
                        style: FontStyles.for14(
                          fontColor: ColorThemes.black0xff010101,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: _shoppingPageController.justArrivalsList,
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
                      width: 20,
                    ),
                    Text(
                      "Category",
                      style: FontStyles.for20(
                        fontColor: ColorThemes.black0xff010101,
                        fontWeight: BoldFont.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children:
                            _shoppingPageController.customCategoryContainerList,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        "Most Popular",
                        style: FontStyles.for20(
                          fontColor: ColorThemes.black0xff010101,
                          fontWeight: BoldFont.bold,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(ShopFromTopBrands());
                      },
                      child: Text(
                        "See More...",
                        style: FontStyles.for14(
                          fontColor: ColorThemes.black0xff010101,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                Column(
                  children: _shoppingPageController.customProductListTileList,
                )
              ],
            ),
          ),
          Positioned(
            top: 20,
            left: 360,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 33,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
