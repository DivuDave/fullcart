import 'package:get/get.dart';

enum Languages {
  Hindi,
  English,
  Gujrati,
  Marathi,
  Telugu,
  Urdu,
  Panjabi,
}

class RadioController extends GetxController {
  Languages _languages = Languages.English;
  set languages(Languages l) {
    _languages = l;
    update();
  }

  Languages get languages => _languages;
}
