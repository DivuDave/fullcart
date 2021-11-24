import 'package:flutter/material.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:fullcart/views/widgets/custom_top_brands_container.dart';
import 'package:get/get.dart';

class TopBrandsCollection extends StatelessWidget {
  const TopBrandsCollection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorThemes.snow0xfffdfcfa,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                CustomTopBrandsContainer(
                  width: MediaQuery.of(context).size.width,
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4VFGoqytUxWHPpxB-7GdADSzoGOjRkVbCBA&usqp=CAU",
                  radius1: 100,
                ),
                Positioned(
                  top: 15,
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.navigate_before,
                      color: ColorThemes.white0xffffffff,
                      size: 33,
                    ),
                  ),
                ),
                Positioned(
                  top: 200,
                  left: 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Top Brands",
                        style: FontStyles.for40(
                          fontColor: ColorThemes.white0xffffffff,
                        ),
                      ),
                      Text(
                        "Categories",
                        style: FontStyles.for40(
                          fontColor: ColorThemes.white0xffffffff,
                        ),
                      ),
                      Text(
                        "Shop from 200 global brands",
                        style: FontStyles.for20(
                          fontColor: ColorThemes.white0xffffffff,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl7-VdG8xU8tX_oBebIW31ARtw6VZKsg08Ub7X3eACEQdjAyMtbQ-52UEjXzc3v4037bw&usqp=CAU",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQn1unDfmwwBAVclAkRiDgBel0R8uL05Xn3pB5yZ2VC1zhHYtz-wh5VhPfbaQI-h7MVR8E&usqp=CAU",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2020/08/12/16/04/clothes-5483040_960_720.jpg",
                      ),
                    ),
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
