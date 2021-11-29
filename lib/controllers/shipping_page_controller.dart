import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum ShippingPageControllerType {
  userFullName,
  userAddress,
  userZipCode,
}

class ShippingPageController extends GetxController {
  TextEditingController adressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController zipCodeContrroller = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController shippingMethodController = TextEditingController();
  TextEditingController shippingNameController = TextEditingController();
  bool? checkValue = false;
  final FocusNode focusNodeForFullName = FocusNode();
  final FocusNode focusNodeForAddress = FocusNode();
  final FocusNode focusNodeForZipCode = FocusNode();
  bool _isFocusedFullName = false;
  set isFocusedFullName(bool value) {
    _isFocusedFullName = value;
    update();
  }

  bool get isFocusedFullName => _isFocusedFullName;
  bool _isFocusedAddress = false;
  set isFocusedAddress(bool value) {
    _isFocusedAddress = value;
    update();
  }

  bool get isFocusedAddress => _isFocusedAddress;

  bool _isFocusedZipCode = false;
  set isFocusedZipCode(bool value) {
    _isFocusedZipCode = value;
    update();
  }

  bool get isFocusedZipCode => _isFocusedZipCode;

  String? _cityDropdownValue = "surat";
  set cityDropdownValue(String cityDropdownValue) {
    _cityDropdownValue = cityDropdownValue;
    update();
  }

  toggle1({ShippingPageControllerType? type}) {
    isFocusedFullName = false;
    isFocusedAddress = false;
    isFocusedZipCode = false;
    if (type != null) {
      switch (type) {
        case ShippingPageControllerType.userFullName:
          isFocusedFullName = true;
          break;
        case ShippingPageControllerType.userAddress:
          isFocusedAddress = true;
          break;
        case ShippingPageControllerType.userZipCode:
          isFocusedZipCode = true;
          break;
      }
    }
    update();
  }

  String get cityDropdownValue => _cityDropdownValue!;
  String? _countryDropdownValue = "India";
  set countryDropdownValue(String countryDropdownValue) {
    _countryDropdownValue = countryDropdownValue;
    update();
  }

  String get countryDropdownValue => _countryDropdownValue!;

  String? _shippingMethodDropDownValue = "Standard Shipping (+ \$4.85)";
  set shippingMethodDropDownValue(String shippingMethodDropDownValue) {
    _shippingMethodDropDownValue = shippingMethodDropDownValue;
    update();
  }

  String get shippingMethodDropDownValue => _shippingMethodDropDownValue!;

  String? _shippingName = "";
  set shippingName(String shippingName) {
    _shippingName = shippingName;
    update();
  }

  String get shippingName => _shippingName!;

  String? _shippingMethod = "";
  set shippingMethod(String shippingMethod) {
    _shippingMethod = shippingMethod;
    update();
  }

  String get shippingMethod => _shippingMethod!;

  String? _zipCode = "";
  set zipCode(String zipcode) {
    _zipCode = zipcode;
    update();
  }

  String get zipCode => _zipCode!;

  String? _address = "";
  set address(String address) {
    _address = address;
    update();
  }

  String get address => _address!;
  String? _city = "";
  set city(String city) {
    _city = city;
    update();
  }

  String get city => _city!;

  void toggle(bool? value) {
    this.checkValue = value;
    update();
  }

  String? _country = "";
  set country(String country) {
    _country = country;
    update();
  }

  String get country => _country!;
}
