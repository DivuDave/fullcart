import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/views/widgets/custom_category_container.dart';
import 'package:fullcart/views/widgets/custom_product_container.dart';
import 'package:get/get.dart';

class ShoppingPageController extends GetxController {
  List<CustomProductContainer> _customProductContainerList =
      <CustomProductContainer>[
    CustomProductContainer(
      price1: "",
      itemName1: "",
      companyName: "Lenon",
      itemName: "T-shirt",
      price: "400/-",
      isCalled: true,
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdw6tluiO7mF1GvGzAoB_lYEj_Ag6GIddmNw&usqp=CAU",
    ),
    CustomProductContainer(
      price1: "",
      itemName1: "",
      companyName: "Mehra's",
      itemName: "T-shirt",
      price: "500/-",
      isCalled: true,
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTWirJaUDW0s0FZx8zFkjgijv9UUIfmpt-fw&usqp=CAU",
    ),
    CustomProductContainer(
      price1: "",
      itemName1: "",
      companyName: "Skies",
      itemName: "Jeans",
      price: "600/-",
      isCalled: true,
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSotSk2abcTwoyPhnoz_LVsy0r_Rmcw49nplg&usqp=CAU",
    ),
    CustomProductContainer(
      price1: "",
      itemName1: "",
      companyName: "Oxford's",
      itemName: "Jeans",
      price: "700/-",
      isCalled: true,
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjlVf902j7CuxeuUasoL1gTJuakTO5LzAPAg&usqp=CAU",
    ),
    CustomProductContainer(
      price1: "",
      itemName1: "",
      companyName: "Star's",
      itemName: "Jeans",
      price: "600/-",
      isCalled: true,
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSelJ-XwiIFTZnnUXp3NF6Zbc6GE9PlSqJvHQ&usqp=CAU",
    ),
    CustomProductContainer(
      price1: "",
      itemName1: "",
      companyName: "Expert's",
      itemName: "Jeans",
      price: "550/-",
      isCalled: true,
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWzephfq4V_i8gl1g3wHUbZVcDUN6ckc8I_Q&usqp=CAU",
    ),
    CustomProductContainer(
      price1: "",
      itemName1: "",
      companyName: "StyleGirl",
      itemName: "T-shirt",
      price: "450/-",
      isCalled: true,
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw_O1H4CAS1HAEY_ihYsO0IKLHeE3n-zEXQg&usqp=CAU",
    ),
    CustomProductContainer(
      price1: "",
      itemName1: "",
      companyName: "Werly",
      itemName: "T-shirt",
      price: "350/-",
      isCalled: true,
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFqzv-t5SAAnzU09PLMxZwsY381o_KhMA73-EiVcaSH7kDTQ_p5RJxi6JxhNNjYm_o9HQ&usqp=CAU",
    ),
  ];
  set customProductCantainerList(
      List<CustomProductContainer> customProductContainerList) {
    _customProductContainerList = customProductContainerList;
    update();
  }

  List<CustomProductContainer> get customProductContainerList =>
      _customProductContainerList;

  List<CustomCategoryContainer> _customCategoryContainerList =
      <CustomCategoryContainer>[
    CustomCategoryContainer(
      url: "https://cdn-icons-png.flaticon.com/128/1415/1415542.png",
      color: ColorThemes.lightPeach0xffecbeae,
    ),
    CustomCategoryContainer(
      url: "https://cdn-icons-png.flaticon.com/128/1785/1785255.png",
      color: ColorThemes.lightPink0xfff7cdce,
    ),
    CustomCategoryContainer(
      url: "https://cdn-icons-png.flaticon.com/128/6181/6181845.png",
      color: ColorThemes.tan0xffd4bba3,
    ),
    CustomCategoryContainer(
      url: "https://cdn-icons-png.flaticon.com/128/1720/1720764.png",
      color: ColorThemes.lightBrown0xfff0cfcd,
    ),
    CustomCategoryContainer(
      url:
          "https://cdn-icons.flaticon.com/png/128/5790/premium/5790538.png?token=exp=1637311925~hmac=546fa4b92f8d2ce2b2e04c5f670e4233",
      color: ColorThemes.lightPeach0xffecbeae,
    ),
    CustomCategoryContainer(
      url:
          "https://cdn-icons.flaticon.com/png/128/4041/premium/4041120.png?token=exp=1637311925~hmac=32d121552cf4603bb4d28f17e6ee3f23",
      color: ColorThemes.lightPink0xfff7cdce,
    ),
  ];
  set customCategoryContainerList(
      List<CustomCategoryContainer> customCategoryContainerList) {
    _customCategoryContainerList = customCategoryContainerList;
    update();
  }

  List<CustomCategoryContainer> get customCategoryContainerList =>
      _customCategoryContainerList;
}
