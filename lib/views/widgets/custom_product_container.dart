import 'package:flutter/material.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:fullcart/views/screens/home_screen/product_details.dart';
import 'package:get/get.dart';

class CustomProductContainer extends StatelessWidget {
  final bool isCalled;
  final String? url;
  final String? itemName;
  final String? companyName;
  final String? price;
  final String? itemName1;
  final String? price1;
  const CustomProductContainer({
    Key? key,
    this.isCalled = true,
    this.url,
    this.itemName,
    this.companyName,
    this.price,
    this.itemName1,
    this.price1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          Get.to(ProductDetails());
        },
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 170,
                  width: isCalled ? 130 : 170,
                  decoration: BoxDecoration(
                    boxShadow: isCalled
                        ? []
                        : [
                            BoxShadow(
                              blurRadius: 5,
                              color: ColorThemes.lightGrey0xFFcfcfcf,
                            ),
                          ],
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: NetworkImage(
                        url!,
                      ),
                    ),
                    color: ColorThemes.white0xffffffff,
                    borderRadius: isCalled
                        ? BorderRadius.circular(10)
                        : BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: isCalled ? 90 : 130,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: ColorThemes.offWhite0xFFF3F3F3,
                    child: IconButton(
                      onPressed: () {
                        Icon(
                          Icons.favorite,
                          color: ColorThemes.pink0xffed3454,
                        );
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: ColorThemes.grey0xFF7F8185,
                        size: 13,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            isCalled
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        companyName!,
                        style: FontStyles.for16(
                          fontColor: ColorThemes.black0xff010101,
                        ),
                      ),
                      Text(
                        itemName!,
                        style: FontStyles.for20(
                          fontColor: ColorThemes.black0xff010101,
                        ),
                      ),
                      Text(
                        price!,
                        style: FontStyles.for16(
                          fontColor: ColorThemes.black0xff010101,
                        ),
                      ),
                    ],
                  )
                : Container(
                    height: 50,
                    width: 170,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: ColorThemes.lightGrey0xFFcfcfcf,
                        ),
                      ],
                      color: ColorThemes.white0xffffffff,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              itemName ?? "",
                              style: FontStyles.for20(
                                fontColor: ColorThemes.black0xff010101,
                              ),
                            ),
                            Text(
                              price ?? "",
                              style: FontStyles.for16(
                                fontColor: ColorThemes.grey0xFF7F8185,
                              ),
                            ),
                          ],
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
