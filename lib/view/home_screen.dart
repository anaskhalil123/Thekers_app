import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application/statics/statics.dart';
import 'package:flutter_application/view/settings_screen.dart';
import 'package:flutter_application/view/taspeh_screen.dart';
import 'package:flutter_application/view/widgets/theker_header_view.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Constants.mainColor,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'أذكار الصباح والمساء',
              style: TextStyle(color: Colors.white, fontFamily: 'HacenTehran'),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assests/splach_background.jpg'),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.666), // اضبط قيمة الشفافية هنا
                BlendMode.srcOver,
              ),
            ),
          ),
          child: ListView(
            children: [
              Image.asset(
                'assests/azkar_splash.png',
                width: width / 6,
                height: height / 6,
              ),
              SizedBox(
                height: height / 20,
              ),
              ListTile(
                onTap: () {
                  Get.to(SettingsScreen());
                },
                title: Text(
                  'الضبط',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontFamily: 'HacenTehran',
                    fontSize: height / 40,
                    color: Constants.mainColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: const Icon(
                  Icons.settings,
                  color: Constants.mainColor,
                ),
              ),
              ListTile(
                onTap: () {
                  Get.to(TaspehScreen());
                },
                title: Text(
                  'المسبحة الإلكترونية',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: height / 45,
                    fontFamily: 'HacenTehran',
                    color: Constants.mainColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: const Icon(Icons.restore, color: Constants.mainColor),
              ),
              ListTile(
                onTap: () {
                  // Get.offAll(const SizedBox.shrink());
                  SystemNavigator.pop();
                },
                title: Text(
                  'الخروج من التطبيق',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: height / 40,
                    fontFamily: 'HacenTehran',
                    color: Constants.redColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: const Icon(Icons.logout, color: Constants.redColor),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: const AssetImage(
                'assests/splach_background.jpg',
              ),
              colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.65), // اضبط قيمة الشفافية هنا
                BlendMode.srcOver,
              ),
              fit: BoxFit.fill),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: height / 20,
            ),
            Image.asset(
              'assests/azkar_splash.png',
              width: width / 5,
              height: height / 5,
            ),
            SizedBox(
              height: height / 50,
            ),
            ThekerHeaderView(width: width, text: 'أذكار الصباح'),
            ThekerHeaderView(width: width, text: 'أذكار المساء'),
            ThekerHeaderView(width: width, text: 'أذكار بعد الصلاة'),
            ThekerHeaderView(width: width, text: 'أذكار الاستيقاظ'),
            ThekerHeaderView(width: width, text: 'أذكار النوم'),
          ],
        ),
      ),
    );
  }
}