import 'package:get/get.dart';

class CountController extends GetxController {
  var count = 0.obs;
  var max = 0.obs;

  void incremenet() {
    count++;
    maxCount(count);
  }

  void decrement() {
    if (count.value > 0) count--;
  }

  void reset() {
    count.value = 0;
  }

  void maxCount(var count) {
    if (count.value > max.value) {
      max.value = count.value;
    }
  }
}
