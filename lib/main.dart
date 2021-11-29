import 'package:flutter/material.dart';
import 'package:fullcart/controllers/filter_controller.dart';
import 'package:fullcart/controllers/focus_controller.dart';
import 'package:fullcart/controllers/radio_controller.dart';
import 'package:fullcart/controllers/shipping_page_controller.dart';
import 'package:fullcart/controllers/sign_up_controller.dart';
import 'package:fullcart/views/screens/home_screen/homepage.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final RadioController r =
      Get.put(RadioController(), tag: RadioController().toString());
  final SignUpController _signUpController = Get.put(
    SignUpController(),
    tag: SignUpController().toString(),
  );
  final ShippingPageController _shippingPageController = Get.put(
      ShippingPageController(),
      tag: ShippingPageController().toString());
  final FocusController _focusController =
      Get.put(FocusController(), tag: FocusController().toString());
  final FilterController _filterController =
      Get.put(FilterController(), tag: FilterController().toString());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
