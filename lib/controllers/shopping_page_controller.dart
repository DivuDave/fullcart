import 'package:fullcart/views/widgets/custom_product_container.dart';
import 'package:get/get.dart';

class ShoppingPageController extends GetxController {
  List<CustomProductContainer> _customProductContainerList =
      <CustomProductContainer>[
    CustomProductContainer(
      isCalled: true,
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdw6tluiO7mF1GvGzAoB_lYEj_Ag6GIddmNw&usqp=CAU",
    ),
  ];
  set customProductCantainerList(
      List<CustomProductContainer> customProductContainerList) {
    _customProductContainerList = customProductContainerList;
    update();
  }

  List<CustomProductContainer> get customProductContainerList =>
      _customProductContainerList;
}
