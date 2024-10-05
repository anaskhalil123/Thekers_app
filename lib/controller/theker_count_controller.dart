import 'package:get/get.dart';

class ThekerCountController extends GetxController {
  RxInt thekerCount = 0.obs;

  ThekerCountController(int thekerNumber) {
    thekerCount.value = thekerNumber;
  }

  void decreaseNumber() {
    if (thekerCount > 0) thekerCount--;
  }

  void resetNumber(int thekerNumber) {
    thekerCount.value = thekerNumber;
  }
}
