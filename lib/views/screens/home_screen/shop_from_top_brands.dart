import 'package:flutter/material.dart';
import 'package:fullcart/controllers/filter_controller.dart';
import 'package:fullcart/controllers/shopping_page_controller.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:fullcart/views/screens/home_screen/trending.dart';
import 'package:fullcart/views/widgets/custom_elevated_button.dart';
import 'package:get/get.dart';
import 'best_products.dart';

class ShopFromTopBrands extends StatelessWidget {
  ShopFromTopBrands({Key? key}) : super(key: key);
  final ShoppingPageController _shoppingPageController =
      ShoppingPageController();
  final FilterController _filterController =
      Get.put(FilterController(), tag: FilterController().toString());

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
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
                  child: IconButton(
                    onPressed: () {
                      scaffoldKey.currentState!.openDrawer();
                    },
                    icon: Icon(
                      Icons.filter_list,
                      color: ColorThemes.white0xffffffff,
                      size: 33,
                    ),
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
      drawer: Row(
        children: [
          SizedBox(
            width: 94,
          ),
          Container(
            color: ColorThemes.lightGrey0xFFcfcfcf.withOpacity(0.8),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width / 1.3,
            child: SingleChildScrollView(
              child: Column(
                children: [
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
                          "Filters",
                          style: FontStyles.for20(
                            fontColor: ColorThemes.black0xff010101,
                            fontWeight: BoldFont.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.close,
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
                        "Price Range",
                        style: FontStyles.for14(
                          fontColor: ColorThemes.black0xff010101,
                        ),
                      ),
                    ],
                  ),
                  GetBuilder<FilterController>(
                    init: _filterController,
                    builder: (_) {
                      return RangeSlider(
                        divisions: 5,
                        labels: RangeLabels(
                          _filterController.rangeValues.start
                              .round()
                              .toString(),
                          _filterController.rangeValues.end.round().toString(),
                        ),
                        inactiveColor: ColorThemes.grey0xFF7F8185,
                        min: 100,
                        max: 10000,
                        activeColor: ColorThemes.black0xff010101,
                        values: _filterController.rangeValues,
                        onChanged: (value) {
                          _filterController.toggle(value);
                        },
                      );
                    },
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Age",
                        style: FontStyles.for14(
                          fontColor: ColorThemes.black0xff010101,
                        ),
                      ),
                    ],
                  ),
                  GetBuilder<FilterController>(
                    init: _filterController,
                    builder: (_) {
                      return Row(
                        children: [
                          CustomElevatedButton(
                            color: ColorThemes.transparent0x00000000,
                            height: 50,
                            radius: 0,
                            width: 120,
                            buttonName: "Clear",
                            onPressed: () {
                              _filterController.rangeValues = RangeValues(0, 0);
                            },
                          ),
                          CustomElevatedButton(
                            height: 50,
                            radius: 0,
                            width: 120,
                            color: ColorThemes.black0xff010101,
                            buttonName: "Apply",
                            onPressed: () {},
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
