import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  TextEditingController forgotPasswordPhoneNumberController =
      TextEditingController();

  String? _phoneNumber = "";
  set phoneNumber(String _phoneNumber) {
    _phoneNumber = phoneNumber;
    update();
  }

  String get phoneNumber => _phoneNumber!;
}
