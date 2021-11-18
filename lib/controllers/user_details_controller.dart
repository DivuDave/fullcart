import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserDetailsController extends GetxController {
  TextEditingController nameTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  String? _name = "";
  set name(String n) {
    _name = n;
    update();
  }

  String get name => _name!;
  String? _email = "";
  set email(String n) {
    _email = n;
    update();
  }

  String get email => _email!;

  String? _password = "";
  set password(String n) {
    _password = n;
    update();
  }

  String get password => _password!;
}
