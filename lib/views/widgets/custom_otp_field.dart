import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fullcart/controllers/otp_controller.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:get/get.dart';

class CustomOtpField extends StatelessWidget {
  CustomOtpField({Key? key}) : super(key: key);
  textFieldOtp(BuildContext context, bool first, bool last,
      TextEditingController controller) {
    return Container(
      height: 85,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: TextFormField(
          controller: controller,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          maxLength: 1,
          readOnly: false,
          showCursor: false,
          style: FontStyles.for25(
            fontColor: ColorThemes.black0xff010101,
            fontWeight: BoldFont.bold,
          ),
          keyboardType: TextInputType.number,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
             
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          autocorrect: true,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: ColorThemes.black0xff010101,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: ColorThemes.facebookBlue0xff0279fc,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }

  final OtpController _otpController =
      Get.find(tag: OtpController().toString());
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 30,
        ),
        textFieldOtp(
          context,
          true,
          false,
          _otpController.firstCharacterController,
        ),
        textFieldOtp(
          context,
          false,
          false,
          _otpController.secondCharacterController,
        ),
        textFieldOtp(
          context,
          false,
          false,
          _otpController.thirdCharacterController,
        ),
        textFieldOtp(
          context,
          false,
          true,
          _otpController.fourthCharacterController,
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
