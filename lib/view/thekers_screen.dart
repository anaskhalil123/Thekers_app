import 'package:flutter/material.dart';
import 'package:flutter_application/view/home_screen.dart';
import 'package:flutter_application/view/widgets/theker_view.dart';
import 'package:get/get.dart';
import 'package:flutter_application/statics/statics.dart';

class ThekersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    final String receivedText = Get.arguments as String;
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
            receivedText,
            textDirection: TextDirection.ltr,
            style: const TextStyle(
              fontFamily: 'HacenTehran',
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Scrollbar(
        child: ListView(
          children: [
            Theker(
              thekerText: 'الحمدلله والله أكبر',
              thekerReward: 'الحمدلله',
              thekerNumber: 3,
            ),
            Theker(
              thekerText: 'الحمدلله والله أكبر',
              thekerReward: 'الحمدلله',
              thekerNumber: 4,
            ),
            Theker(
              thekerText: 'الحمدلله والله أكبر',
              thekerReward: 'الشكر لله تعالى',
              thekerNumber: 7,
            ),
            Theker(
              thekerText: 'أستغفر الله وأتوب إليه',
              thekerReward: 'الحمدلله',
              thekerNumber: 3,
            ),
            Theker(
              thekerText: 'الحمدلله والله أكبر',
              thekerReward: 'الحمدلله',
              thekerNumber: 3,
            ),
            Theker(
              thekerText: 'الحمدلله والله أكبر',
              thekerReward: 'الحمدلله',
              thekerNumber: 3,
            ),
          ],
        ),
      ),
    );
  }
}
