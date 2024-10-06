import 'package:flutter/material.dart';
import 'package:flutter_application/controller/theme_controller.dart';
import 'package:flutter_application/statics/statics.dart';
import 'package:flutter_application/view/home_screen.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.find<ThemeController>();
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {
              Get.off(HomeScreen());
            },
          ),
        ],
        title: const Align(
          alignment: Alignment.centerRight,
          child: Text(
            'الضبط',
            style: TextStyle(
              fontFamily: 'alfont_com_SakkalKitab',
              fontWeight: FontWeight.bold,
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
                _openWhatsAppChat();
              },
              trailing: IconButton(
                icon: Icon(
                  Icons.message,
                  color: Theme.of(context).primaryColor,
                  size: 30,
                ),
                onPressed: () {},
              ),
              title: const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'راسلنا',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              subtitle: const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'اقتراحات  لتطوير البرنامج',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              trailing: IconButton(
                icon: Icon(
                  Icons.sunny,
                  color: Theme.of(context).primaryColor,
                  size: 30,
                ),
                onPressed: () {},
              ),
              title: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'اختر الثيم',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              subtitle: Align(
                alignment: Alignment.centerRight,
                child: GetBuilder<ThemeController>(
                  builder: (theme) => Switch(
                    value: !theme
                        .isDarkMode, // because the defualt is light mode, not dark mode.
                    onChanged: (value) {
                      theme.toggleTheme();
                      print(
                          'it is now ${theme.isDarkMode} in controller and ${value}');
                    },
                    thumbColor: WidgetStatePropertyAll(
                      Theme.of(context).primaryColor,
                    ),
                    trackColor: WidgetStatePropertyAll(Constants.grayColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _openWhatsAppChat() async {
  print('open whatsapp');
  String phoneNumber = '972599634785';
  String message = 'السلام عليكم';
  final String whatsappUrl = "https://wa.me/$phoneNumber";

  if (await canLaunch(whatsappUrl)) {
    await launch(whatsappUrl); //Launch WhatsApp
  } else {
    throw 'Could not launch WhatsApp';
  }
}
