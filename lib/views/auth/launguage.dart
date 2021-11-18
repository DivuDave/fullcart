import 'package:flutter/material.dart';
import 'package:fullcart/controllers/radio_controller.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';
import 'package:fullcart/views/auth/sign_up_screen.dart';
import 'package:fullcart/views/home_screen/tutorial_for_top_brands.dart';
import 'package:fullcart/views/widgets/custom_elevated_button.dart';
import 'package:fullcart/views/widgets/custom_language_listtile.dart';
import 'package:get/get.dart';

class Language extends StatelessWidget {
  Language({Key? key}) : super(key: key);

  RadioController r = Get.find(tag: RadioController().toString());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: ColorThemes.pink0xffed3454,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          backgroundColor: ColorThemes.white0xffffffff,
          title: Text(
            "Choose Language",
            style: FontStyles.for25(
              fontColor: ColorThemes.pink0xffed3454,
            ),
          )),
      backgroundColor: ColorThemes.silver0xffc9c0b7,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: GetBuilder(
          init: r,
          builder: (_) {
            return Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                CustomLanguageListtile(
                  text: "English",
                  value: Languages.English,
                  groupValue: r.languages,
                  onChanged: (value) {
                    r.languages = value;
                  },
                ),
                CustomLanguageListtile(
                  text: "Hindi",
                  value: Languages.Hindi,
                  groupValue: r.languages,
                  onChanged: (value) {
                    r.languages = value;
                  },
                ),
                CustomLanguageListtile(
                  text: "Gujarati",
                  value: Languages.Gujrati,
                  groupValue: r.languages,
                  onChanged: (value) {
                    r.languages = value;
                  },
                ),
                CustomLanguageListtile(
                  text: "Panjabi",
                  value: Languages.Panjabi,
                  groupValue: r.languages,
                  onChanged: (value) {
                    r.languages = value;
                  },
                ),
                CustomLanguageListtile(
                  text: "Marathi",
                  value: Languages.Marathi,
                  groupValue: r.languages,
                  onChanged: (value) {
                    r.languages = value;
                  },
                ),
                CustomLanguageListtile(
                  text: "Telugu",
                  value: Languages.Telugu,
                  groupValue: r.languages,
                  onChanged: (value) {
                    r.languages = value;
                  },
                ),
                CustomLanguageListtile(
                  text: "Urdu",
                  value: Languages.Urdu,
                  groupValue: r.languages,
                  onChanged: (value) {
                    r.languages = value;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                CustomElevatedButton(
                  radius: 0,
                  buttonName: "Continue",
                  color: ColorThemes.pink0xffed3454,
                  height: 50,
                  width: 200,
                  onPressed: () {
                    Get.to(TutorialForTopBrands());
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
