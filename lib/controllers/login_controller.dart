import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum LoginControllerType {
  userLoginEmail,
  userLoginPassword,
}

class LoginController extends GetxController {
  TextEditingController loginPasswordTextController = TextEditingController();
  TextEditingController loginEmailTextController = TextEditingController();
  final FocusNode focusNodeForLoginPassword = FocusNode();
  final FocusNode focusNodeForLoginEmail = FocusNode();
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
  bool _isFocusedLoginEmail = false;
  set isFocusedLoginEmail(bool value) {
    _isFocusedLoginEmail = value;
    update();
  }

  bool get isFocusedLoginEmail => _isFocusedLoginEmail;
  bool _isFocusedLoginPassword = false;
  set isFocusedLoginPassword(bool value) {
    _isFocusedLoginPassword = value;
    update();
  }

  bool get isFocusedLoginPassword => _isFocusedLoginPassword;
  toggle({LoginControllerType? type}) {
    isFocusedLoginEmail = false;
    isFocusedLoginPassword = false;
    if (type != null) {
      switch (type) {
        case LoginControllerType.userLoginEmail:
          isFocusedLoginEmail = true;
          break;

        case LoginControllerType.userLoginPassword:
          isFocusedLoginPassword = true;
          break;
      }
    }
    update();
  }
}
