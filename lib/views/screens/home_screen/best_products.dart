import 'package:flutter/material.dart';
import 'package:fullcart/controllers/shopping_page_controller.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:fullcart/views/widgets/custom_product_container.dart';
import 'package:get/get.dart';

class BestProducts extends StatelessWidget {
  BestProducts({Key? key}) : super(key: key);
  final ShoppingPageController _shoppingPageController = Get.put(
      ShoppingPageController(),
      tag: ShoppingPageController().toString());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                  Expanded(
                    child: Text(
                      "Back",
                      style: FontStyles.for20(
                        fontColor: ColorThemes.grey0xFF7F8185,
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 33,
                      ),
                      Positioned(
                        top: 4,
                        left: 22,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: ColorThemes.red0xfff20812,
                            shape: BoxShape.circle,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.shopping_bag,
                    size: 33,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
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
                          "Best Products",
                          style: FontStyles.for25(
                            fontColor: ColorThemes.black0xff010101,
                            fontWeight: BoldFont.bold,
                          ),
                        ),
                        Text(
                          "7743 items found",
                          style: FontStyles.for14(
                            fontColor: ColorThemes.lightGrey0xFFcfcfcf,
                            fontWeight: BoldFont.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.menu,
                    size: 33,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      CustomProductContainer(
                        price1: "",
                        itemName1: "",
                        companyName: "Lenon",
                        itemName: "T-shirt",
                        price: "400/-",
                        isCalled: false,
                        url:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdw6tluiO7mF1GvGzAoB_lYEj_Ag6GIddmNw&usqp=CAU",
                      ),
                      CustomProductContainer(
                        price1: "",
                        itemName1: "",
                        companyName: "Mehra's",
                        itemName: "T-shirt",
                        price: "500/-",
                        isCalled: false,
                        url:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTWirJaUDW0s0FZx8zFkjgijv9UUIfmpt-fw&usqp=CAU",
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      CustomProductContainer(
                        price1: "",
                        itemName1: "",
                        companyName: "Skies",
                        itemName: "Jeans",
                        price: "600/-",
                        isCalled: false,
                        url:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSotSk2abcTwoyPhnoz_LVsy0r_Rmcw49nplg&usqp=CAU",
                      ),
                      CustomProductContainer(
                        price1: "",
                        itemName1: "",
                        companyName: "Oxford's",
                        itemName: "Jeans",
                        price: "700/-",
                        isCalled: false,
                        url:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjlVf902j7CuxeuUasoL1gTJuakTO5LzAPAg&usqp=CAU",
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      CustomProductContainer(
                        price1: "",
                        itemName1: "",
                        companyName: "Star's",
                        itemName: "Jeans",
                        price: "600/-",
                        isCalled: false,
                        url:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSelJ-XwiIFTZnnUXp3NF6Zbc6GE9PlSqJvHQ&usqp=CAU",
                      ),
                      CustomProductContainer(
                        price1: "",
                        itemName1: "",
                        companyName: "Expert's",
                        itemName: "Jeans",
                        price: "550/-",
                        isCalled: false,
                        url:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWzephfq4V_i8gl1g3wHUbZVcDUN6ckc8I_Q&usqp=CAU",
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      CustomProductContainer(
                        price1: "",
                        itemName1: "",
                        companyName: "StyleGirl",
                        itemName: "T-shirt",
                        price: "450/-",
                        isCalled: false,
                        url:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw_O1H4CAS1HAEY_ihYsO0IKLHeE3n-zEXQg&usqp=CAU",
                      ),
                      CustomProductContainer(
                        price1: "",
                        itemName1: "",
                        companyName: "Werly",
                        itemName: "T-shirt",
                        price: "350/-",
                        isCalled: false,
                        url:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFqzv-t5SAAnzU09PLMxZwsY381o_KhMA73-EiVcaSH7kDTQ_p5RJxi6JxhNNjYm_o9HQ&usqp=CAU",
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
