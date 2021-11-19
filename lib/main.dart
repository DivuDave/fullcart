import 'package:flutter/material.dart';
import 'package:fullcart/controllers/radio_controller.dart';
import 'package:fullcart/views/homepage.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final RadioController r =
      Get.put(RadioController(), tag: RadioController().toString());
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
