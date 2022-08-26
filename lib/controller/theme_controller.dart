import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  //-- database storage ---//
  static final themeBox = GetStorage();

  RxString themeMode = themeBox.read("theme") == null
      ? "light".obs
      : (themeBox.read("theme") == "dark" ? "dark".obs : "light".obs);

  onChanageThemeMode() {
    String? status = themeBox.read("theme");

    if (status == null) {
      themeMode.value == "dark";
      themeBox.write("theme", "dark");
    } else if (status == "light") {
      themeMode.value = "dark";
      themeBox.write("theme", "dark");
    } else {
      themeMode.value = "light";
      themeBox.write("theme", "light");
    }
  }
}
