import 'package:flutter/material.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';

class CustomProductListTile extends StatelessWidget {
  final String? url;
  final String? age;
  final String? color;
  final String? itemname;
  final bool? isInWishList;
  final bool? isInCart;

  final String? price;
  const CustomProductListTile({
    Key? key,
    this.url,
    this.age,
    this.color,
    this.itemname,
    this.price,
    this.isInWishList,
    this.isInCart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                height: isInWishList == true ? 100 : 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(url ?? ""),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        itemname!,
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
                      Row(
                        children: [
                          Text(
                            age!,
                            style: FontStyles.for14(
                              fontColor: ColorThemes.grey0xFF7F8185,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 15,
                              width: 3,
                              color: ColorThemes.grey0xFF7F8185,
                            ),
                          ),
                          Text(
                            color!,
                            style: FontStyles.for14(
                              fontColor: ColorThemes.grey0xFF7F8185,
                            ),
                          ),
                        ],
                      ),
                      isInWishList == true
                          ? SizedBox(
                              height: 15,
                            )
                          : SizedBox(),
                      isInWishList == true
                          ? GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 35,
                                width: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: ColorThemes.black0xff010101,
                                    width: 2,
                                  ),
                                  color: ColorThemes.white0xffffffff,
                                ),
                                child: Center(
                                  child: Text(
                                    "Move To Bag",
                                    style: FontStyles.for14(
                                      fontColor: ColorThemes.black0xff010101,
                                      fontWeight: BoldFont.medium,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : SizedBox(),
                      isInWishList == true
                          ? SizedBox(
                              height: 15,
                            )
                          : SizedBox(),
                    ],
                  ),
                  isInCart == true
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorThemes.lightGrey0xFFcfcfcf,
                            ),
                            height: 25,
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.add),
                                Center(
                                  child: Text("2"),
                                ),
                                Icon(
                                  Icons.remove,
                                ),
                              ],
                            ),
                          ),
                        )
                      : SizedBox()
                ],
              ),
            ],
          ),
          isInWishList == true || isInCart == true
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: ColorThemes.lightGrey0xFFcfcfcf,
                    height: 2,
                    width: 380,
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
