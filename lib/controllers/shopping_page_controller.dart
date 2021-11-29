import 'package:flutter/material.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/views/widgets/custom_category_container.dart';
import 'package:fullcart/views/widgets/custom_product_container.dart';
import 'package:fullcart/views/widgets/custom_product_list_tile.dart';
import 'package:get/get.dart';

class ShoppingPageController extends GetxController {
  List<CustomProductContainer> _justArrivalsList = <CustomProductContainer>[
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
  set justArrivalsList(List<CustomProductContainer> justArrivalsList) {
    _justArrivalsList = justArrivalsList;
    update();
  }

  List<CustomProductContainer> get justArrivalsList => _justArrivalsList;
  List<CustomProductContainer> _topBrandsList = <CustomProductContainer>[
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
  ];
  set topBrandsList(List<CustomProductContainer> topBrandsList) {
    _topBrandsList = topBrandsList;
    update();
  }

  List<CustomProductContainer> get topBrandsList => _topBrandsList;

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
      url: "https://cdn-icons-png.flaticon.com/128/1198/1198409.png",
      color: ColorThemes.lightPeach0xffecbeae,
    ),
    CustomCategoryContainer(
      url: "https://cdn-icons-png.flaticon.com/128/94/94699.png",
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
  List<CustomProductListTile> _customProductListTileList = [
    CustomProductListTile(
      isInWishList: false,
      price: "400/-",
      itemname: "Tshirt",
      color: "Color:Blue",
      age: "Age:20",
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvQh_D1uiPxFOrTFwyHkqTOI5psBJ9k3LNOQ&usqp=CAU",
    ),
    CustomProductListTile(
      isInWishList: false,
      itemname: "T-shirt",
      price: "350/-",
      age: "Age:15",
      color: "Color:Blue",
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgkPyawKRX3-9aoRICdB45fMjZEd69Dv3IzA&usqp=CAU",
    ),
    CustomProductListTile(
      isInWishList: false,
      itemname: "T-shirt",
      price: "400/-",
      age: "Age:22",
      color: "Color:Peach",
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2K8R0CbMCuqFYVHnRF6RpNZjEa68ela5_ew&usqp=CAU",
    ),
    CustomProductListTile(
      isInWishList: false,
      age: "Age:25",
      itemname: "jeans",
      price: "500",
      color: "Color:Blue",
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvne37gWiuwDFbnUtRzPAzrLc96BJrIJd8Ww&usqp=CAU",
    ),
  ];
  set customProductListTile(
      List<CustomProductListTile> customProductListTileList) {
    _customProductListTileList = customProductListTileList;
    update();
  }

  List<CustomProductListTile> get customProductListTileList =>
      _customProductListTileList;

  List<CustomProductListTile> _cartList = [
    CustomProductListTile(
      isInCart: true,
      isInWishList: false,
      price: "400/-",
      itemname: "Tshirt",
      color: "Color:Blue",
      age: "Age:20",
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvQh_D1uiPxFOrTFwyHkqTOI5psBJ9k3LNOQ&usqp=CAU",
    ),
    CustomProductListTile(
      isInCart: true,
      isInWishList: false,
      itemname: "T-shirt",
      price: "350/-",
      age: "Age:15",
      color: "Color:Blue",
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgkPyawKRX3-9aoRICdB45fMjZEd69Dv3IzA&usqp=CAU",
    ),
    CustomProductListTile(
      isInCart: true,
      isInWishList: false,
      itemname: "T-shirt",
      price: "400/-",
      age: "Age:22",
      color: "Color:Peach",
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2K8R0CbMCuqFYVHnRF6RpNZjEa68ela5_ew&usqp=CAU",
    ),
    CustomProductListTile(
      isInCart: true,
      isInWishList: false,
      age: "Age:25",
      itemname: "jeans",
      price: "500",
      color: "Color:Blue",
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvne37gWiuwDFbnUtRzPAzrLc96BJrIJd8Ww&usqp=CAU",
    ),
  ];
  set cartList(List<CustomProductListTile> cartList) {
    _cartList = cartList;
    update();
  }

  List<CustomProductListTile> get cartList => _cartList;

  List<CustomProductListTile> _wishList = [
    CustomProductListTile(
      isInWishList: true,
      price: "400/-",
      itemname: "Tshirt",
      color: "Color:Blue",
      age: "Age:20",
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvQh_D1uiPxFOrTFwyHkqTOI5psBJ9k3LNOQ&usqp=CAU",
    ),
    CustomProductListTile(
      isInWishList: true,
      itemname: "T-shirt",
      price: "350/-",
      age: "Age:15",
      color: "Color:Blue",
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgkPyawKRX3-9aoRICdB45fMjZEd69Dv3IzA&usqp=CAU",
    ),
    CustomProductListTile(
      isInWishList: true,
      itemname: "T-shirt",
      price: "400/-",
      age: "Age:22",
      color: "Color:Peach",
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2K8R0CbMCuqFYVHnRF6RpNZjEa68ela5_ew&usqp=CAU",
    ),
    CustomProductListTile(
      isInWishList: true,
      age: "Age:25",
      itemname: "jeans",
      price: "500",
      color: "Color:Blue",
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvne37gWiuwDFbnUtRzPAzrLc96BJrIJd8Ww&usqp=CAU",
    ),
  ];
  set wishList(List<CustomProductListTile> wishList) {
    _wishList = wishList;
    update();
  }

  List<CustomProductListTile> get wishList => _wishList;
}
