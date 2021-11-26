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
  final FocusNode focusNodeForName = FocusNode();
  final FocusNode focusNodeForEmail = FocusNode();
  final FocusNode focusNodeForPassword = FocusNode();
  final FocusNode focusNodeForLoginPassword = FocusNode();
  final FocusNode focusNodeForLoginEmail = FocusNode();
  bool _isFocusedName = false;
  set isFocusedName(bool _isFocusedName) {
    _isFocusedName = isFocusedName;
    update();
  }

  bool get isFocusedName => _isFocusedName;

  bool _isFocusedEmail = false;
  set isFocusedEmail(bool _isFocusedEmail) {
    _isFocusedEmail = isFocusedEmail;
    update();
  }

  bool get isFocusedEmail => _isFocusedEmail;
  bool _isFocusedPassword = false;
  set isFocusedPassword(bool _isFocusedPassword) {
    _isFocusedPassword = isFocusedPassword;
    update();
  }

  bool get isFocusedPassword => _isFocusedPassword;

  bool _isFocusedLoginEmail = false;
  set isFocusedLoginEmail(bool _isFocusedLoginEmail) {
    _isFocusedLoginEmail = isFocusedLoginEmail;
    update();
  }

  bool get isFocusedLoginEmail => _isFocusedLoginEmail;
  bool _isFocusedLoginPassword = false;
  set isFocusedLoginPassword(bool _isFocusedLoginPassword) {
    _isFocusedLoginPassword = isFocusedLoginPassword;
    update();
  }

  bool get isFocusedLoginPassword => _isFocusedLoginPassword;
}
