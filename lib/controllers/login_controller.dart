import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController loginPasswordTextController = TextEditingController();
  TextEditingController loginEmailTextController = TextEditingController();

  String? _email = "";
  set email(String email) {
    _email = email;
    update();
  }

  String get email => _email!;

  String? _password = "";
  set password(String password) {
    _password = password;
    update();
  }

  String get password => _password!;
  
}
