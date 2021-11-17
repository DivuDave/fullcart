import 'package:flutter/material.dart';
import 'package:fullcart/controllers/radio_controller.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:fullcart/views/auth/launguage.dart';
import 'package:get/get.dart';

class CustomLanguageListtile extends StatelessWidget {
  final String? text;
  final dynamic value;
  final dynamic groupValue;
  final void Function(dynamic)? onChanged;
  const CustomLanguageListtile({
    Key? key,
    this.text,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 70,
          width: 380,
          child: ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            tileColor: ColorThemes.white0xffffffff,
            title: Text(
              text ?? "",
              style: FontStyles.for20(fontColor: ColorThemes.silver0xffc9c0b7),
            ),
            leading: Radio(
              activeColor: ColorThemes.orange0xffed3454,
              value: value,
              groupValue: groupValue,
              onChanged: onChanged,
            ),
          ),
        ),
      ),
    );
  }
}
