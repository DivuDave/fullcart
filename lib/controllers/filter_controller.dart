import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterController extends GetxController {
  RangeValues rangeValues = RangeValues(100, 10000);

  void toggle(RangeValues value) {
    this.rangeValues = value;
    update();
  }

  bool _isTappedDion = false;
  set isTappedDion(bool value) {
    _isTappedDion = value;
    update();
  }

  bool get isTappedDion => _isTappedDion;

  bool _isTappedEstreeClaude = false;
  set isTappedEstreeClaude(bool value) {
    _isTappedEstreeClaude = value;
    update();
  }

  bool get isTappedEstreeClaude => _isTappedEstreeClaude;

  bool _isTappedChannels = false;
  set isTappedChannels(bool value) {
    _isTappedChannels = value;
    update();
  }

  bool get isTappedChannels => _isTappedChannels;

  bool _isTappedClinque = false;
  set isTappedClinque(bool value) {
    _isTappedClinque = value;
    update();
  }

  bool get isTappedClinque => _isTappedClinque;

  bool _isTappedBobbeBlawn = false;
  set isTappedBobbeBlawn(bool value) {
    _isTappedBobbeBlawn = value;
    update();
  }

  bool get isTappedBobbeBlawn => _isTappedBobbeBlawn;
}
