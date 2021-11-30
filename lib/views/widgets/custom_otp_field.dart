import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fullcart/controllers/otp_controller.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:get/get.dart';

typedef OtpSubmitted = Function(String);

// ignore: must_be_immutable
class CustomOtpField extends StatefulWidget {
  final OtpSubmitted? onOtpSubmitted;
  final int? otpLength;
  CustomOtpField({
    Key? key,
    this.onOtpSubmitted,
    this.otpLength,
  }) : super(key: key);
  int currentSelectedField = 0;
  bool otpComplete = false;
  @override
  _CustomOtpFieldState createState() => _CustomOtpFieldState();
}

class _CustomOtpFieldState extends State<CustomOtpField> {
  final List<TextEditingController> otpControllerList = [];
  final List<FocusNode> focusNodeList = [];
  final OtpController _otpController =
      Get.find(tag: OtpController().toString());
  generateOtpControllerList(int length) {
    for (int i = 0; i < length; i++) {
      otpControllerList.add(TextEditingController(text: "-"));
      focusNodeList.add(FocusNode());
    }
  }

  String getOtp(int length) {
    String otp = "";
    for (var i = 0; i < length; i++) {
      otp = otp + otpControllerList[i].text;
    }

    return otp;
  }

  // textFieldOtp(BuildContext context, bool first, bool last,
  //     TextEditingController controller) {
  //   return Container(
  //     height: 85,
  //     child: AspectRatio(
  //       aspectRatio: 0.7,
  //       child: TextFormField(
  //         controller: controller,
  //         inputFormatters: [
  //           FilteringTextInputFormatter.digitsOnly,
  //         ],
  //         maxLength: 1,
  //         readOnly: false,
  //         showCursor: false,
  //         style: FontStyles.for25(
  //           fontColor: ColorThemes.black0xff010101,
  //           fontWeight: BoldFont.bold,
  //         ),
  //         keyboardType: TextInputType.number,
  //         onChanged: (value) {
  //           if (value.length == 1 && last == false) {
  //             FocusScope.of(context).nextFocus();
  //           }
  //           if (value.length == 0 && first == false) {
  //             FocusScope.of(context).previousFocus();
  //           }
  //         },
  //         autocorrect: true,
  //         textAlign: TextAlign.center,
  //         decoration: InputDecoration(
  //           counter: Offstage(),
  //           enabledBorder: OutlineInputBorder(
  //             borderSide: BorderSide(
  //               width: 2,
  //               color: ColorThemes.black0xff010101,
  //             ),
  //             borderRadius: BorderRadius.circular(12),
  //           ),
  //           focusedBorder: OutlineInputBorder(
  //             borderSide: BorderSide(
  //               width: 2,
  //               color: ColorThemes.facebookBlue0xff0279fc,
  //             ),
  //             borderRadius: BorderRadius.circular(12),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
  @override
  void initState() {
    generateOtpControllerList(widget.otpLength!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OtpController>(
      init: _otpController,
      builder: (_) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            otpControllerList.length,
            (index) => Builder(
              builder: (context) {
                return Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: widget.currentSelectedField == index
                        ? ColorThemes.grey0xFF7F8185
                        : ColorThemes.lightGrey0xFFcfcfcf,
                    borderRadius: BorderRadius.circular(17),
                    border: Border.all(
                      color: widget.otpComplete
                          ? ColorThemes.green0xE7209242
                          : ColorThemes.red0xfff20812,
                      width: 2,
                    ),
                    boxShadow: [
                      widget.currentSelectedField == index
                          ? BoxShadow(
                              color: ColorThemes.black0xff010101,
                              blurRadius: 30,
                              offset: Offset(0, 10),
                              spreadRadius: -15,
                            )
                          : BoxShadow(
                              color: ColorThemes.transparent0x00000000,
                            ),
                    ],
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 17),
                  alignment: Alignment.center,
                  child: TextFormField(
                    enableInteractiveSelection: false,
                    controller: otpControllerList[index],
                    focusNode: focusNodeList[index],
                    style: FontStyles.for25(
                      fontColor: otpControllerList[index].text != "" &&
                              otpControllerList[index].text != "-" &&
                              otpControllerList[index].text != null
                          ? ColorThemes.white0xffffffff
                          : ColorThemes.black0xff010101,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                    cursorColor: otpControllerList[index].text != "" &&
                            otpControllerList[index].text != null
                        ? ColorThemes.white0xffffffff
                        : ColorThemes.black0xff010101,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(1),
                    ],
                    keyboardType: TextInputType.number,
                    // ignore: deprecated_member_use
                    maxLengthEnforced: true,
                    onChanged: (value) {
                      if (value.length >= 1) {
                        widget.currentSelectedField++;
                        FocusScope.of(context).nextFocus();
                      } else if (value.length == 0) {
                        widget.currentSelectedField--;
                        FocusScope.of(context).previousFocus();
                      }
                      if (index == widget.otpLength! - 1) {
                        String otp = getOtp(widget.otpLength!);
                        if (otp.length == widget.otpLength) {
                          widget.otpComplete = true;
                          widget.onOtpSubmitted!(otp);
                        }
                      } else {
                        widget.otpComplete = false;
                      }
                      setState(() {});
                    },
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
