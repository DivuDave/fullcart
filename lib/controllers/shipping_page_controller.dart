import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShippingPageController extends GetxController {
  TextEditingController adressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController zipCodeContrroller = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController shippingMethodController = TextEditingController();
  TextEditingController shippingNameController = TextEditingController();
  bool? checkValue = false;
  String? _cityDropdownValue = "surat";
  set cityDropdownValue(String cityDropdownValue) {
    _cityDropdownValue = cityDropdownValue;
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
