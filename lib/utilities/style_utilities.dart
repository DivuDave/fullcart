import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fullcart/utilities/color_utilities.dart';

enum BoldFont {
  light, // 200
  regular, //400
  medium, // 500
  semiBold, // 600
  bold, //700
}
FontWeight getFontWeight(BoldFont fwt) {
  switch (fwt) {
    case BoldFont.light:
      return FontWeight.w200;

    case BoldFont.regular:
      return FontWeight.w400;

    case BoldFont.medium:
      return FontWeight.w500;

    case BoldFont.semiBold:
      return FontWeight.w600;

    case BoldFont.bold:
      return FontWeight.w700;

    default:
      return FontWeight.w200;
  }
}

class FontStyles {
  static TextStyle for62({
    @required Color? fontColor,
    BoldFont fontWeight = BoldFont.regular,
  }) {
    return TextStyle(
      color: fontColor ?? ColorThemes.white0xffffffff,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 62,
    );
  }

  static TextStyle for20({
    @required Color? fontColor,
    BoldFont fontWeight = BoldFont.bold,
  }) {
    return TextStyle(
      color: fontColor ?? ColorThemes.white0xffffffff,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 20,
    );
  }

  static TextStyle for25({
    @required Color? fontColor,
    BoldFont fontWeight = BoldFont.regular,
  }) {
    return TextStyle(
      color: fontColor ?? ColorThemes.white0xffffffff,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 25,
    );
  }

  static TextStyle for30({
    @required Color? fontColor,
    BoldFont fontWeight = BoldFont.bold,
  }) {
    return TextStyle(
      color: fontColor ?? ColorThemes.white0xffffffff,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 30,
    );
  }

  static TextStyle for16({
    @required Color? fontColor,
    BoldFont fontWeight = BoldFont.regular,
  }) {
    return TextStyle(
      color: fontColor ?? ColorThemes.white0xffffffff,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 16,
    );
  }

  static TextStyle for14({
    @required Color? fontColor,
    BoldFont fontWeight = BoldFont.bold,
  }) {
    return TextStyle(
      color: fontColor ?? ColorThemes.white0xffffffff,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 14,
    );
  }

  static TextStyle forError({
    @required Color? fontColor,
    BoldFont fontWeight = BoldFont.bold,
  }) {
    return TextStyle(
      color: fontColor ?? ColorThemes.white0xffffffff,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 14,
    );
  }
}
