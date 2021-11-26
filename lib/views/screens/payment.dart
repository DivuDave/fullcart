import 'package:flutter/material.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:fullcart/views/screens/bottom_navigation_bars.dart';
import 'package:fullcart/views/screens/home_screen/shopping_page.dart';
import 'package:fullcart/views/widgets/custom_elevated_button.dart';
import 'package:get/get.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.navigate_before,
                    size: 33,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Expanded(
                  child: Text(
                    "CheckOut",
                    style: FontStyles.for20(
                      fontColor: ColorThemes.black0xff010101,
                    ),
                  ),
                ),
                Icon(
                  Icons.menu,
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Payment",
                style: FontStyles.for30(
                  fontColor: ColorThemes.black0xff010101,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Center(),
              height: 230,
              width: 360,
              decoration: BoxDecoration(
                color: ColorThemes.white0xffffffff,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: ColorThemes.grey0xFF7F8185,
                  ),
                ],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "http://storyv.com/wp-content/uploads/2019/02/discovery-gold-credit-card.png",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "or Checkout with",
              style: FontStyles.for14(
                fontColor: ColorThemes.grey0xFF7F8185,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 360,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2bTdYdSx7aMz1iE4eknnxG1lYtt1KtjLxTQ&usqp=CAU",
                  ),
                ),
                border: Border.all(
                  color: ColorThemes.lightGrey0xFFcfcfcf,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 360,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2IqdD1V3_EXP5BowPuXuBjFw6uBQKYvUfzw&usqp=CAU",
                  ),
                ),
                border: Border.all(
                  color: ColorThemes.lightGrey0xFFcfcfcf,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CustomElevatedButton(
              onPressed: () {
                Get.to(
                  BottomNavigationBars(
                    index: 0,
                  ),
                );
              },
              buttonName: "Pay \$210",
              color: ColorThemes.black0xff010101,
              height: 50,
              radius: 0,
              width: 360,
            )
          ],
        ),
      ),
    );
  }
}
