import 'package:flutter/material.dart';
import 'package:flutter_application/model/thekers_class_card.dart';
import 'package:flutter_application/model/ThekerData.dart';
import 'package:flutter_application/model/theker_number.dart';
import 'package:flutter_application/view/home_screen.dart';
import 'package:flutter_application/view/widgets/theker_view.dart';
import 'package:get/get.dart';
import 'package:flutter_application/statics/statics.dart';

// TODO ضايل هلقيت أعرف كيف بدي أضيف كل رقم من هادي الليست لكل ذكر
class ThekersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String receivedText = Get.arguments ?? '';

    // get data from database
    print('receivedText is $receivedText');
    print('get data from db');
    var data = getThekersForClasses(receivedText);

    // save the Thekers numbers in the static List
    int index = 0; // id for the thekers numbers
    for (ThekerData theker in data) {
      Constants.thekerNumbers.add(
        ThekerNumber(
          thekerId: 0,
          thekerNumber: int.parse(theker.number),
        ),
      );
      index++;
    }

    // print the list
    print(Constants.thekerNumbers.length);

    return WillPopScope(
      onWillPop: () async {
        Constants.thekerNumbers = [];
        print(
            'After back from the screen, thekerNumbers list will return empty \n it length is ${Constants.thekerNumbers.length}');
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Theme.of(context).primaryColor,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                Get.off(HomeScreen());
                Constants.thekerNumbers = [];
                print(
                    'After back from the screen, thekerNumbers list will return empty \n it length is ${Constants.thekerNumbers.length}');
              },
            ),
          ],
          title: Align(
            alignment: Alignment.centerRight,
            child: Text(
              receivedText,
              textDirection: TextDirection.ltr,
              style: const TextStyle(
                fontFamily: 'alfont_com_SakkalKitab',
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
        body: Scrollbar(
          child: ListView.builder(
            addAutomaticKeepAlives: false,
            addRepaintBoundaries: false,
            itemBuilder: (context, index) {
              print('add the class to the View');
              return Theker(
                thekerText: data[index].text,
                thekerGuide: data[index].guide,
                thekerReward: data[index].reward,
                thekerNumber: data[index].number,
                thekerChangableNumber:
                    Constants.thekerNumbers[index].thekerNumber,
                thekerID: index,
              );
            },
            itemCount: data.length,
          ),
        ),
      ),
    );
  }
}
