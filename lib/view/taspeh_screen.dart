import 'package:flutter/material.dart';
import 'package:flutter_application/controller/taspeeh_controller.dart';
import 'package:flutter_application/statics/statics.dart';
import 'package:flutter_application/view/home_screen.dart';
import 'package:get/get.dart';

class TaspehScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var taspeehController = Get.put(TaspeehController());

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
            'المسبحة الإلكترونية',
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
            SizedBox(
              height: height / 5,
            ),
            Obx(
              () => InkWell(
                onTap: () {
                  taspeehController.decreaseNumber();
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: height / 15),
                  child: Container(
                    width: width / 2,
                    height: height / 3,
                    decoration: BoxDecoration(
                      color: Constants.grayColor.withOpacity(0.55),
                      borderRadius: BorderRadius.circular(200),
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
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
                              fontSize: MediaQuery.of(context).size.width / 12,
                              fontFamily: 'alfont_com_SakkalKitab',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height / 8,
                        ),
                        const Center(
                          child: Text(
                            'مجموع التسبيحات',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'alfont_com_SakkalKitab',
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            '${taspeehController.taspeeh_number}',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 35,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height / 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 4),
              child: TextButton(
                onPressed: () {
                  taspeehController.resetNumber();
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Theme.of(context).primaryColor,
                  ),
                ),
                child: Text(
                  'أعد التسبيح',
                  style: TextStyle(
                    fontSize: width / 15,
                    fontFamily: 'alfont_com_SakkalKitab',
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
