import 'package:flutter/material.dart';
import 'package:flutter_application/statics/statics.dart';
import 'package:flutter_application/view/home_screen.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Constants.mainColor,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {
              Get.off(HomeScreen());
            },
          ),
        ],
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'الضبط',
            style: const TextStyle(
              fontFamily: 'HacenTehran',
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage(
              'assests/settings_background.jpg',
            ),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.666),
              BlendMode.srcOver,
            ),
          ),
        ),
        child: ListView(
          children: [
            ListTile(
              onTap: () {
                // go to whatsapp
              },
              trailing: IconButton(
                icon: const Icon(
                  Icons.message,
                  color: Constants.mainColor,
                  size: 30,
                ),
                onPressed: () {},
              ),
              title: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'راسلنا',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Align(
                alignment: Alignment.centerRight,
                child: Text('اقتراحات  لتطوير البرنامج'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
