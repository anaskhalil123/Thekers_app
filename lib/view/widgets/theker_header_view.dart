import 'package:flutter_application/statics/statics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/view/thekers_screen.dart';
import 'package:get/get.dart';

class ThekerHeaderView extends StatelessWidget {
  const ThekerHeaderView({
    super.key,
    required this.text,
    required this.width,
  });

  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      child: TextButton(
        onPressed: () {
          print('button clicked ,');
          Get.to(
            ThekersScreen(),
            arguments: text,
          );
        },
        style: ButtonStyle(
          padding: WidgetStateProperty.all(const EdgeInsets.all(15)),
          backgroundColor: const WidgetStatePropertyAll(Constants.mainColor),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: width / 18,
            color: Colors.white,
            fontFamily: 'HacenTehran',
          ),
        ),
      ),
    );
  }
}
