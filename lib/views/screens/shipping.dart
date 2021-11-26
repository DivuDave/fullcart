import 'package:flutter/material.dart';
import 'package:fullcart/controllers/shipping_page_controller.dart';
import 'package:fullcart/controllers/sign_up_controller.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:fullcart/views/screens/payment.dart';
import 'package:fullcart/views/widgets/custom_elevated_button.dart';
import 'package:fullcart/views/widgets/custom_textField.dart';
import 'package:get/get.dart';

class Shipping extends StatelessWidget {
  Shipping({Key? key}) : super(key: key);
  final GlobalKey<FormState> formkeys = GlobalKey<FormState>();

  final ShippingPageController _shippingPageController =
      Get.find(tag: ShippingPageController().toString());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkeys,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.navigate_before,
                      size: 33,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Expanded(
                    child: Text(
                      "CheckOut",
                      style: FontStyles.for20(
                        fontColor: ColorThemes.black0xff010101,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.menu,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Shipping",
                  style: FontStyles.for30(
                    fontColor: ColorThemes.black0xff010101,
                  ),
                ),
              ),
              Column(
                children: [
                  CustomTextField(
                    width: 350,
                    controller: _shippingPageController.shippingNameController,
                    onChanged: (value) {
                      _shippingPageController.shippingName =
                          _shippingPageController.shippingNameController.text
                              .toString();
                      _shippingPageController.update();
                    },
                    hintText: "full name",
                    labelText: "full name",
                    validator: (value) {
                      if (!GetUtils.isAlphabetOnly(value!)) {
                        return "Enter valid name";
                      }
                    },
                  ),
                  GetBuilder<ShippingPageController>(
                    init: _shippingPageController,
                    builder: (_) {
                      return Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            _shippingPageController.shippingNameController.text
                                        .toString() ==
                                    ""
                                ? "Enter name"
                                : "",
                            style: FontStyles.forError(
                              fontColor: ColorThemes.red0xfff20812,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  CustomTextField(
                    width: 350,
                    controller: _shippingPageController.adressController,
                    onChanged: (value) {
                      _shippingPageController.address = _shippingPageController
                          .adressController.text
                          .toString();
                      _shippingPageController.update();
                    },
                    hintText: "Address",
                    labelText: "Address",
                  ),
                  GetBuilder<ShippingPageController>(
                    init: _shippingPageController,
                    builder: (_) {
                      return Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            _shippingPageController.adressController.text
                                        .toString() ==
                                    ""
                                ? "Enter Address"
                                : "",
                            style: FontStyles.forError(
                              fontColor: ColorThemes.red0xfff20812,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      GetBuilder<ShippingPageController>(
                          init: _shippingPageController,
                          builder: (_) {
                            return Column(
                              children: [
                                SizedBox(
                                  width: 165,
                                  height: 75,
                                  child: DropdownButton<String>(
                                    value: _shippingPageController
                                        .cityDropdownValue,
                                    underline: Container(
                                      height: 1,
                                      color: ColorThemes.grey0xFF7F8185,
                                    ),
                                    onChanged: (String? newValue) {
                                      _shippingPageController
                                          .cityDropdownValue = newValue ?? "";
                                      _shippingPageController.update();
                                    },
                                    hint: Text("Select city"),
                                    items: [
                                      DropdownMenuItem(
                                        child: Text("Surat"),
                                        value: "surat",
                                      ),
                                      DropdownMenuItem(
                                        child: Text("Chennai"),
                                        value: "Chennai",
                                      ),
                                      DropdownMenuItem(
                                        child: Text("Mumbai"),
                                        value: "mumbai",
                                      ),
                                      DropdownMenuItem(
                                        child: Text("Vadodara"),
                                        value: "Vadodara",
                                      ),
                                      DropdownMenuItem(
                                        child: Text("Ahemdabad"),
                                        value: "Ahemdabad",
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }),
                      GetBuilder<ShippingPageController>(
                        init: _shippingPageController,
                        builder: (_) {
                          return Row(
                            children: [
                              Text(
                                _shippingPageController.cityDropdownValue == ""
                                    ? "Enter City"
                                    : "",
                                style: FontStyles.forError(
                                  fontColor: ColorThemes.red0xfff20812,
                                ),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 165,
                    child: Column(
                      children: [
                        CustomTextField(
                          controller:
                              _shippingPageController.zipCodeContrroller,
                          onChanged: (value) {
                            _shippingPageController.zipCode =
                                _shippingPageController.zipCodeContrroller.text
                                    .toString();
                            _shippingPageController.update();
                          },
                          hintText: "zipCode",
                          labelText: "zipCode",
                          validator: (value) {
                            if (!GetUtils.isNumericOnly(value!)) {
                              return "Enter valid Zipcode";
                            }
                          },
                        ),
                        GetBuilder<ShippingPageController>(
                          init: _shippingPageController,
                          builder: (_) {
                            return Row(
                              children: [
                                Text(
                                  _shippingPageController
                                              .zipCodeContrroller.text
                                              .toString() ==
                                          ""
                                      ? "Enter Zipcode"
                                      : "",
                                  style: FontStyles.forError(
                                    fontColor: ColorThemes.red0xfff20812,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Column(
                children: [
                  GetBuilder(
                      init: _shippingPageController,
                      builder: (_) {
                        return Column(
                          children: [
                            SizedBox(
                              width: 350,
                              child: DropdownButton<String>(
                                value: _shippingPageController
                                    .countryDropdownValue,
                                underline: Container(
                                  height: 1,
                                  color: ColorThemes.grey0xFF7F8185,
                                ),
                                onChanged: (String? newValue) {
                                  _shippingPageController.countryDropdownValue =
                                      newValue ?? "";
                                  _shippingPageController.update();
                                },
                                hint: Text("Select Country"),
                                items: [
                                  DropdownMenuItem(
                                    child: Text("India"),
                                    value: "India",
                                  ),
                                  DropdownMenuItem(
                                    child: Text("Malesia"),
                                    value: "Malesia",
                                  ),
                                  DropdownMenuItem(
                                    child: Text("England"),
                                    value: "England",
                                  ),
                                  DropdownMenuItem(
                                    child: Text("America"),
                                    value: "America",
                                  ),
                                  DropdownMenuItem(
                                    child: Text("Afghanistan"),
                                    value: "Afghanistan",
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
                      }),
                  GetBuilder<ShippingPageController>(
                    init: _shippingPageController,
                    builder: (_) {
                      return Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            _shippingPageController.countryDropdownValue == ""
                                ? "Enter Country"
                                : "",
                            style: FontStyles.forError(
                              fontColor: ColorThemes.red0xfff20812,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  GetBuilder<ShippingPageController>(
                      init: _shippingPageController,
                      builder: (_) {
                        return Column(
                          children: [
                            SizedBox(
                              width: 350,
                              child: DropdownButton<String>(
                                value: _shippingPageController
                                    .shippingMethodDropDownValue,
                                underline: Container(
                                  height: 1,
                                  color: ColorThemes.grey0xFF7F8185,
                                ),
                                onChanged: (String? newValue) {
                                  _shippingPageController
                                          .shippingMethodDropDownValue =
                                      newValue ?? "";
                                  _shippingPageController.update();
                                },
                                hint: Text("Select Shipping Method"),
                                items: [
                                  DropdownMenuItem(
                                    child: Text("Standard Shipping (+ \$4.85)"),
                                    value: "Standard Shipping (+ \$4.85)",
                                  ),
                                  DropdownMenuItem(
                                    child: Text("Standard Shipping (+ \$4.80)"),
                                    value: "Standard Shipping (+ \$4.80)",
                                  ),
                                  DropdownMenuItem(
                                    child: Text("Standard Shipping (+ \$4)"),
                                    value: "Standard Shipping (+ \$4)",
                                  ),
                                  DropdownMenuItem(
                                    child: Text("Standard Shipping (+ \$3.98)"),
                                    value: "Standard Shipping (+ \$3.98)",
                                  ),
                                  DropdownMenuItem(
                                    child: Text("Standard Shipping (+ \$3.50)"),
                                    value: "Standard Shipping (+ \$3.50)",
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
                      }),
                  GetBuilder<ShippingPageController>(
                    init: _shippingPageController,
                    builder: (_) {
                      return Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            _shippingPageController
                                        .shippingMethodDropDownValue ==
                                    ""
                                ? "Enter Country"
                                : "",
                            style: FontStyles.forError(
                              fontColor: ColorThemes.red0xfff20812,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  GetBuilder<ShippingPageController>(
                    init: _shippingPageController,
                    builder: (_) {
                      return Checkbox(
                        checkColor: ColorThemes.white0xffffffff,
                        activeColor: ColorThemes.black0xff010101,
                        value: _shippingPageController.checkValue,
                        onChanged: (value) {
                          _shippingPageController.toggle(value);
                        },
                      );
                    },
                  ),
                  Text(
                    "Save for faster ChekOut next time.",
                    style: FontStyles.for16(
                      fontColor: ColorThemes.grey0xFF7F8185,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomElevatedButton(
                onPressed: () {
                  if (formkeys.currentState!.validate()) {
                    if (_shippingPageController.shippingNameController.text
                                .toString() !=
                            "" &&
                        _shippingPageController.adressController.text
                                .toString() !=
                            "" &&
                        _shippingPageController.cityDropdownValue != "" &&
                        _shippingPageController.zipCodeContrroller.text
                                .toString() !=
                            "" &&
                        _shippingPageController.countryDropdownValue != "" &&
                        _shippingPageController.shippingMethodDropDownValue !=
                            "") {
                      Get.bottomSheet(
                        Container(
                          height: 400,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: ColorThemes.pink0xffed3454,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              topRight: Radius.circular(100),
                            ),
                          ),
                          child: BottomSheet(
                            onClosing: () {},
                            builder: (_) {
                              return Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        """
Choose your
payment Method
""",
                                        style: FontStyles.for30(
                                          fontColor:
                                              ColorThemes.black0xff010101,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "Total Amount",
                                          style: FontStyles.for20(
                                            fontColor:
                                                ColorThemes.black0xff010101,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "\$210",
                                        style: FontStyles.for20(
                                          fontColor:
                                              ColorThemes.black0xff010101,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  CustomElevatedButton(
                                    buttonName: "Credit Card",
                                    color: ColorThemes.black0xff010101,
                                    height: 50,
                                    radius: 0,
                                    width: 380,
                                    onPressed: () {
                                      Get.to(Payment());
                                    },
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  CustomElevatedButton(
                                    buttonName: "PayPal",
                                    color: ColorThemes.facebookBlue0xff0279fc,
                                    height: 50,
                                    radius: 0,
                                    width: 380,
                                    onPressed: () {
                                      Get.to(Payment());
                                    },
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      );
                    } else {
                      Get.snackbar("Error", "Enter Details");
                    }
                  }
                },
                buttonName: "Continue to Payment",
                color: ColorThemes.black0xff010101,
                height: 50,
                radius: 0,
                width: 380,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
