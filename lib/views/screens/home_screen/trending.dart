import 'package:flutter/material.dart';
import 'package:fullcart/controllers/shopping_page_controller.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:get/get.dart';

class Trending extends StatelessWidget {
  Trending({Key? key}) : super(key: key);
  final ShoppingPageController _shoppingPageController = Get.put(
      ShoppingPageController(),
      tag: ShoppingPageController().toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.6,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2WjOnF48qG0UCeM48HWWB98Dgy36M6u4vfA&usqp=CAU",
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                child: IconButton(
                  onPressed: () {
                    Get.back();
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
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                """
Why are these the most 
trend products?""",
                style: FontStyles.for20(
                  fontColor: ColorThemes.black0xff010101,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    """
trend products You need to capture your online audience’s
attention by really nailing down """,
                    style: FontStyles.for14(
                      fontColor: ColorThemes.grey0xFF7F8185,
                      fontWeight: BoldFont.regular,
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 33,
                left: 250,
                child: Text(
                  " Read more",
                  style: FontStyles.for14(
                    fontColor: ColorThemes.black0xff010101,
                    fontWeight: BoldFont.regular,
                  ),
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
                width: 20,
              ),
              Text(
                "Shop the trends",
                style: FontStyles.for20(
                  fontColor: ColorThemes.black0xff010101,
                  fontWeight: BoldFont.medium,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              height: 90,
              child: Row(
                children: _shoppingPageController.customProductListTileList,
              ),
            ),
          )
        ],
      ),
    );
  }
}
