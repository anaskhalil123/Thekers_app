import 'package:flutter/material.dart';
import 'package:flutter_application/view/azkar_splach_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialRoute: '/',
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: AzkarSplashScreen(),
    );
  }
}
