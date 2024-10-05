import 'package:flutter/material.dart';
import 'package:flutter_application/model/ThekerClass.dart';
import 'package:flutter_application/model/ThekerData.dart';
import 'package:flutter_application/view/home_screen.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ThekerClassAdapter());
  Hive.registerAdapter(ThekerDataAdapter());
  await Hive.openBox<ThekerClass>('thekerClasses');
  await Hive.openBox<ThekerData>('thekers');
  print('MAIN data will add now!');
  addThekersAndClasses();
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
      title: 'أذكار الصباح والمساء',
      home: HomeScreen(),
    );
  }
}
