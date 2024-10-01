import 'package:flutter/material.dart';
import 'package:flutter_application/controller/splash_controller.dart';
import 'package:get/get.dart';

class AzkarSplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    final SplashController splashController = Get.put(SplashController());
    // navigate to HomeSCreen
    splashController.navigateToHomeScreen();
    
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assests/splach_background.jpg',
            width: width,
            height: height,
            fit: BoxFit.cover,
          ),
          Center(
            child: Image.asset(
              'assests/azkar_splash.png',
              width: width / 2,
            ),
          ),
        ],
      ),
    );
  }
}
