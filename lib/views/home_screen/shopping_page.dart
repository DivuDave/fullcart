import 'package:flutter/material.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:fullcart/views/widgets/custom_product_container.dart';
import 'package:fullcart/views/widgets/custom_top_brands_container.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({Key? key}) : super(key: key);

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
                    Text(
                      "Just Arrivals",
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
                      CustomProductContainer(
                        isCalled: true,
                        height: 170,
                      ),
                    ],
                  ),
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
