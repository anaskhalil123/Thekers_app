import 'package:flutter/material.dart';
import 'package:flutter_application/controller/theker_count_controller.dart';
import 'package:flutter_application/controller/theme_controller.dart';
import 'package:flutter_application/statics/statics.dart';
import 'package:get/get.dart';

class Theker extends StatelessWidget {
  Theker({
    super.key,
    required this.thekerText,
    required this.thekerID,
    required this.thekerReward,
    required this.thekerNumber,
    required this.thekerChangableNumber,
    required this.thekerGuide,
  });

  final String thekerText;
  final int thekerID; // its Id inside the Static List, not inside the db
  final String thekerReward;
  final String thekerNumber;
  int thekerChangableNumber;
  final String thekerGuide;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    // get ThekerCountController
    ThekerCountController thekerCountController =
        ThekerCountController(thekerChangableNumber);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: const Color.fromARGB(255, 196, 196, 196).withOpacity(0.60),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  thekerText,
                  style: TextStyle(
                    fontFamily: 'alfont_com_PortadaARA-Bold',
                    fontSize: width / 18,
                    color: Colors.black,
                    height: 1,
                  ),
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  thekerReward,
                  style: TextStyle(
                    fontSize: width / 28,
                    height: 0.9,
                    fontFamily: 'alfont_com_DGAgnadeen-Thin',
                    color: Theme.of(context).textTheme.bodySmall?.color,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: () {
                          thekerCountController
                              .resetNumber(int.parse(thekerNumber));
                          thekerChangableNumber =
                              thekerCountController.thekerCount.value;
                          Constants.thekerNumbers[thekerID].thekerNumber =
                              thekerCountController.thekerCount.value;
                        },
                        icon: Icon(
                          Icons.restart_alt_rounded,
                          color: Theme.of(context).primaryColor,
                          size: 30,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Obx(
                        () {
                          return TextButton(
                            onPressed: () {
                              print(
                                'the thekerNumber before change ${Constants.thekerNumbers[thekerID].thekerNumber}',
                              );
                              thekerCountController.decreaseNumber();
                              thekerChangableNumber =
                                  thekerCountController.thekerCount.value;
                              Constants.thekerNumbers[thekerID].thekerNumber =
                                  thekerCountController.thekerCount.value;
                              print(
                                  'the thekerNumber after change ${Constants.thekerNumbers[thekerID].thekerNumber}');
                            },
                            style: ButtonStyle(
                              padding: WidgetStateProperty.all(
                                EdgeInsets.symmetric(
                                  vertical: height / 130,
                                ), // horizontal: width / 3,
                              ),
                              backgroundColor: WidgetStatePropertyAll(
                                Theme.of(context).primaryColor,
                              ),
                            ),
                            child: Text(
                              '${thekerCountController.thekerCount}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: width / 18,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        icon: Icon(
                          Icons.menu_book,
                          color: Theme.of(context).primaryColor,
                          size: 30,
                        ),
                        onPressed: () {
                          Get.defaultDialog(
                            title: 'الدليل',
                            cancel: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                style: ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll(
                                    Theme.of(context).primaryColor,
                                  ),
                                ),
                                onPressed: () {
                                  Get.back();
                                },
                                child: const Text(
                                  'حسناً',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            contentPadding: EdgeInsets.zero,
                            content: SizedBox(
                              width: width / 1.5,
                              height: height / 3,
                              child: SingleChildScrollView(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    thekerGuide,
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                        fontFamily: 'alfont_com_SakkalKitab'),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// print(
//     'the thekerNumber before change ${Constants.thekerNumbers[thekerID].thekerNumber}');
// var num = thekerCountController.thekerCount.value;
// // change it inside the list
// Constants.thekerNumbers[thekerID].thekerNumber =
//     thekerChangableNumber;
// print(
//     '/////////////////////////////////////////////////////////\n');
// print(
//     'the thekerNumber after change ${Constants.thekerNumbers[thekerID].thekerNumber}');
