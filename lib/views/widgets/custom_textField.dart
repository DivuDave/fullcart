import 'package:flutter/material.dart';
import 'package:fullcart/controllers/user_details_controller.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final double? width;
  final void Function(String)? onChanged;
  CustomTextField({
    Key? key,
    this.controller,
    this.hintText,
    this.labelText,
    this.width,
    this.onChanged,
  }) : super(key: key);
  final UserDetailsController u =
      Get.find(tag: UserDetailsController().toString());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        onChanged: onChanged,
        controller: controller,
        decoration: InputDecoration(
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
