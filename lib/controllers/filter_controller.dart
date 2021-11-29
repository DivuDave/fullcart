import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterController extends GetxController {
  RangeValues rangeValues = RangeValues(100, 10000);

  void toggle(RangeValues value) {
    this.rangeValues = value;
    update();
  }
}
