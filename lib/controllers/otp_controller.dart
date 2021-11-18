import 'package:get/get.dart';
import 'package:flutter/material.dart';

class OtpController extends GetxController {
  TextEditingController firstCharacterController = TextEditingController();
  TextEditingController secondCharacterController = TextEditingController();
  TextEditingController thirdCharacterController = TextEditingController();
  TextEditingController fourthCharacterController = TextEditingController();
  String? _first = "";
  set first(String first) {
    _first = first;
    update();
  }

  String get first => _first!;
  String? _second = "";
  set second(String second) {
    _second = second;
    update();
  }

  String get second => _second!;
  String? _third = "";
  set third(String third) {
    _third = third;
    update();
  }

  String get third => _third!;
  String? _fourth = "";
  set fourth(String fourth) {
    _fourth = fourth;
    update();
  }

  String get fourth => _fourth!;
}
