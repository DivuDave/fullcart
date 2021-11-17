import 'package:flutter/material.dart';
import 'package:fullcart/utilities/color_utilities.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorThemes.black0xff202124,
      body: Container(
        height: 900,
        width: 400,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              ColorThemes.silver0xffc9c0b7,
              ColorThemes.transparent0x00000000,
            ],
          ),
        ),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  hintText: "",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorThemes.black0xff202124,
                      width: 2,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
