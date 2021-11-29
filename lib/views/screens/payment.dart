import 'package:flutter/material.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:fullcart/views/screens/bottom_navigation_bars.dart';
import 'package:fullcart/views/widgets/custom_credit_card_container.dart';
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomCreditCardContainer(
                    url:
                        "http://storyv.com/wp-content/uploads/2019/02/discovery-gold-credit-card.png",
                  ),
                  CustomCreditCardContainer(
                    url:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ19XQWLCNMLaQPw63tbaunAPUFiAimxz8OZg&usqp=CAU",
                  ),
                  CustomCreditCardContainer(
                    url:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpX3cujvxRas5Xa1O_TI578YoevrrLsJlumg&usqp=CAU",
                  ),
                  CustomCreditCardContainer(
                    url:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3ZpwWS22eMvWlxhYH_k_laQ1P4DPUPRK4tA&usqp=CAU",
                  ),
                  CustomCreditCardContainer(
                    url:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTe2S-Tmyv5mBLpEt7PItxQ4Mp9QYwlyHFR0A&usqp=CAU",
                  ),
                  CustomCreditCardContainer(
                    url:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaCrp20apvBA-E9RrRcINFnkDQagAz-VwmjA&usqp=CAU",
                  ),
                  CustomCreditCardContainer(
                    url:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi6RZX2UckIQVpbbjWYX7RutMEYd9GgHwISw&usqp=CAU",
                  ),
                  CustomCreditCardContainer(
                    url:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrCEeL5sR-CffJHAJq8nlausrHbyKuQ-piXA&usqp=CAU",
                  ),
                  CustomCreditCardContainer(
                    url:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS085vDVS3quk9w6azJenljZOohLAQVrbBB1Q&usqp=CAU",
                  ),
                  CustomCreditCardContainer(
                    url:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCF0aJ9s6IIH5bnKDpbb1pHvJJdz6rLILH1g&usqp=CAU",
                  ),
                ],
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
                    "https://www.pikpng.com/pngl/m/429-4298319_paypal-quiere-aumentar-la-velocidad-de-las-transacciones.png",
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
                    "https://cdn-icons-png.flaticon.com/128/5977/5977576.png",
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
