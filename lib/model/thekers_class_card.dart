import 'package:flutter_application/model/ThekerClass.dart';
import 'package:flutter_application/model/ThekerData.dart';
import 'package:hive_flutter/hive_flutter.dart';

void addThekerClass(String text) async {
  var box = Hive.box<ThekerClass>('thekerClasses');
  var thekerClass = ThekerClass(name: text);
  await box.add(thekerClass);
}

List<ThekerClass> getThekerClasses() {
  return Hive.box<ThekerClass>('thekerClasses').values.toList();
}

void addThekerData(String text, String reward, String number, String guide,
    String thekerClass) async {
  var box = Hive.box<ThekerData>('thekers');
  print('theker data added now');
  var thekerData = ThekerData(
    text: text,
    guide: guide,
    number: number,
    reward: reward,
    thekerClass: thekerClass,
  );
  await box.add(thekerData);
}

List<ThekerData> getThekersForClasses(String thekerClass) {
  var thekers = Hive.box<ThekerData>('thekers').values.toList();
  return thekers.where((theker) => theker.thekerClass == thekerClass).toList();
}

List<ThekerData> getAllThekers() {
  var thekers = Hive.box<ThekerData>('thekers').values.toList();
  return thekers;
}
