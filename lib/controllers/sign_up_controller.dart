import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  TextEditingController nameTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

  String? _name = "";
  set name(String name) {
    _name = name;
    update();
  }

  String get name => _name!;
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
