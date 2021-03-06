import 'package:flutter/material.dart';
import 'package:fullcart/controllers/focus_controller.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final double? width;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final void Function()? onTap;
  final FocusNode? focusNode;
  final void Function()? onEditingComplete;
  final void Function(String)? onFieldSubmitted;

  CustomTextField({
    Key? key,
    this.controller,
    this.hintText,
    this.labelText,
    this.width,
    this.onChanged,
    this.suffixIcon,
    this.validator,
    this.prefixIcon,
    this.onTap,
    this.focusNode,
    this.onEditingComplete,
    this.onFieldSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        obscureText: false,
        onFieldSubmitted: onFieldSubmitted,
        onEditingComplete: onEditingComplete,
        focusNode: focusNode,
        onTap: onTap,
        autofocus: true,
        validator: validator,
        onChanged: onChanged,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          labelText: labelText,
          hintText: hintText,
          labelStyle: FontStyles.for16(
            fontColor: ColorThemes.grey0xFF7F8185,
          ),
          hintStyle: FontStyles.for16(
            fontColor: ColorThemes.grey0xFF7F8185,
          ),
        ),
      ),
    );
  }
}
