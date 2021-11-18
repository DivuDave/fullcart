import 'package:flutter/material.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:get/get.dart';

class CustomProductContainer extends StatelessWidget {
  final double? height;
  final bool? isCalled;
  const CustomProductContainer({Key? key, this.height, this.isCalled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height,
          width: 130,
          decoration: BoxDecoration(
            color: ColorThemes.white0xffffffff,
            borderRadius: isCalled == true
                ? BorderRadius.circular(10)
                : BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
          ),
        ),
        isCalled == true
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Dio",
                    style: FontStyles.for14(
                      fontColor: ColorThemes.black0xff010101,
                    ),
                  ),
                  Text(
                    "Capture Totale",
                  ),
                  Text(
                    "\$44.99",
                  ),
                ],
              )
            : Container(),
      ],
    );
  }
}
