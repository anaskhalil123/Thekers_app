import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  bool isDarkMode = false;

  @override
  void onInit() {
    loadTheme();
    super.onInit();
  }

  void loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print(
      '$ThemeController, the dark theme now is ${prefs.getBool('isDarkMode')}',
    );
    isDarkMode = prefs.getBool('isDarkMode') ?? false;
  }

  void toggleTheme() async {
    isDarkMode = !isDarkMode;
    print(
      '$ThemeController, the dark theme now is ${isDarkMode}',
    );
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDarkMode', isDarkMode);

    update();
  }
}
