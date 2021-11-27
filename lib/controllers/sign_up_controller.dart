import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum SignUpControllerType {
  userName,
  userEmail,
  userPassword,
}

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

  bool _isFocusedName = false;
  set isFocusedName(bool value) {
    _isFocusedName = value;
    update();
  }

  bool get isFocusedName => _isFocusedName;

  bool _isFocusedEmail = false;
  set isFocusedEmail(bool value) {
    _isFocusedEmail = value;
    update();
  }

  bool get isFocusedEmail => _isFocusedEmail;
  bool _isFocusedPassword = false;
  set isFocusedPassword(bool value) {
    _isFocusedPassword = value;
    update();
  }

  bool get isFocusedPassword => _isFocusedPassword;
  toggle({SignUpControllerType? type}) {
    isFocusedEmail = false;
    isFocusedName = false;
    isFocusedPassword = false;
    if (type != null) {
      switch (type) {
        case SignUpControllerType.userEmail:
          isFocusedEmail = true;
          break;
        case SignUpControllerType.userName:
          isFocusedName = true;
          break;
        case SignUpControllerType.userPassword:
          isFocusedPassword = true;
          break;
      }
    }
    update();
  }
}
