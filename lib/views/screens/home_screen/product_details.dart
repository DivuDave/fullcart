import 'package:flutter/material.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:fullcart/views/widgets/custom_elevated_button.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorThemes.white0xffffffff,
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.navigate_before,
                        size: 33,
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      size: 28,
                    ),
                  ),
                  Positioned(
                    top: 13,
                    left: 28,
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: ColorThemes.red0xfff20812,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  size: 28,
                ),
              ),
            ],
          ),
          Container(
            height: 330,
            width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdw6tluiO7mF1GvGzAoB_lYEj_Ag6GIddmNw&usqp=CAU",
                ),
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "T-Shirt",
                      style: FontStyles.for30(
                        fontColor: ColorThemes.black0xff010101,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: ColorThemes.pinks0xfff397a8,
                        ),
                        Icon(
                          Icons.star,
                          color: ColorThemes.pinks0xfff397a8,
                        ),
                        Icon(
                          Icons.star,
                          color: ColorThemes.pinks0xfff397a8,
                        ),
                        Icon(
                          Icons.star,
                          color: ColorThemes.pinks0xfff397a8,
                        ),
                        Icon(
                          Icons.star,
                          color: ColorThemes.lightGrey0xFFcfcfcf,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Text(
                "\$58.99",
                style: FontStyles.for16(
                  fontColor: ColorThemes.black0xff010101,
                  fontWeight: BoldFont.bold,
                ),
              ),
              SizedBox(
                width: 20,
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
                "Color",
                style: FontStyles.for14(
                  fontColor: ColorThemes.lightGrey0xFFcfcfcf,
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
              Expanded(
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: ColorThemes.white0xffffffff,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 50,
                            color: ColorThemes.black0xff010101,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Container(
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                            color: ColorThemes.darkGreen0xff5f4920,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: ColorThemes.brown0xffcba493,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: ColorThemes.silver0xffc9c0b7,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: ColorThemes.offWhite0xFFF3F3F3,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: ColorThemes.pink0xffed3454,
                    size: 20,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
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
                """
Lightweight and smooth fabric. Comfortable for
wearing.Whether you’re selling t-shirts or strollers, 
shoppers like to buy from people they trust and 
building trust is different on what you are selling.""",
                style: FontStyles.for16(
                  fontColor: ColorThemes.lightGrey0xFFcfcfcf,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CustomElevatedButton(
            onPressed: () {},
            buttonName: "Add To Cart",
            color: ColorThemes.black0xff010101,
            height: 50,
            width: 340,
            radius: 0,
          )
        ],
      ),
    );
  }
}
