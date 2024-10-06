import 'package:get/get.dart';

class TaspeehController extends GetxController {
  var taspeeh_number = 100.obs;

  void decreaseNumber() {
    if (taspeeh_number > 0) {
      taspeeh_number--;
    }
  }

  void resetNumber() {
    taspeeh_number.value = 100;
  }
}
