import 'package:flutter/material.dart';
import 'package:flutter_application/statics/statics.dart';
import 'package:flutter_application/view/home_screen.dart';
import 'package:get/get.dart';

class TaspehScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
        title: const Align(
          alignment: Alignment.centerRight,
          child: Text(
            'المسبحة الإلكترونية',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assests/settings_background.jpg'),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.666),
              BlendMode.srcOver,
            ),
          ),
          color: Colors.white,
        ),
        child: ListView(
          children: [
            Center(
              child: Container(
                width: width / 1.5,
                height: height / 3,
                decoration: BoxDecoration(
                  color: Constants.grayColor.withOpacity(0.55),
                  borderRadius: BorderRadius.circular(200),
                  border: Border.all(
                    color: Constants.mainColor,
                    width: 4,
                  ),
                ),
                child: ListView(
                  children: [
                    SizedBox(
                      height: height / 30,
                    ),
                    Center(
                      child: Text(
                        'استغفر الله',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width / 15,
                            fontFamily: 'HacenTehran'),
                      ),
                    ),
                    SizedBox(
                      height: height / 8,
                    ),
                    Center(
                      child: Text(
                        'مجموع التسبيحات',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Center(
                      child: Text(
                        '${Constants.taspeeh_number}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height / 3,
            ),
            TextButton(
              onPressed: () {
                Constants.taspeeh_number = 100;
              },
              child: Text('أعد التسبيح'),
              style: ButtonStyle(),
            )
          ],
        ),
      ),
    );
  }
}
