import 'package:flutter_application/view/home_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  
  void navigateToHomeScreen(){
    Future.delayed(const Duration(seconds: 2),(){
      Get.off(HomeScreen());
    });
  }
}