import 'package:flutter/material.dart';
import 'package:flutter_application/controller/theme_controller.dart';
import 'package:flutter_application/model/ThekerClass.dart';
import 'package:flutter_application/model/ThekerData.dart';
import 'package:flutter_application/statics/statics.dart';
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
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (theme) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme.isDarkMode
              ? ThemeData.dark().copyWith(
                  primaryColor: Constants.mainColorDark,
                  scaffoldBackgroundColor: const Color.fromARGB(172, 80, 80, 80),
                  textTheme: TextTheme(
                    bodySmall: TextStyle(
                      color: Constants.grayColor,
                    ),
                  ),
                )
              : ThemeData.light().copyWith(
                  primaryColor: Constants.mainColor,
                  scaffoldBackgroundColor: Colors.white,
                  textTheme: TextTheme(
                    bodySmall: TextStyle(
                      color: Color.fromARGB(255, 161, 100, 7),
                    ),
                  ),
                ),
          title: 'أذكار الصباح والمساء',
          home: HomeScreen(),
        );
      },
    );
  }
}
