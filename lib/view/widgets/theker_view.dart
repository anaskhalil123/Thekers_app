import 'package:flutter/material.dart';
import 'package:flutter_application/statics/statics.dart';

class Theker extends StatelessWidget {
  const Theker({
    super.key,
    required this.thekerText,
    required this.thekerReward,
    required this.thekerNumber,
  });

  final String thekerText;
  final String thekerReward;
  final int thekerNumber;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
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
                    fontFamily: 'HacenTehran',
                    fontSize: width / 18,
                    height: 1,
                  ),
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  thekerReward,
                  style: TextStyle(
                      fontSize: width / 23,
                      height: 0.9,
                      fontFamily: 'HacenTehran',
                      color: const Color.fromARGB(255, 161, 100, 7)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.restart_alt_rounded,
                        color: Constants.mainColor,
                        size: 30,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all(
                            EdgeInsets.symmetric(
                              vertical: height / 130,
                            ), // horizontal: width / 3,
                          ),
                          backgroundColor:
                              const WidgetStatePropertyAll(Constants.mainColor),
                        ),
                        child: Text(
                          '${thekerNumber}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: width / 18,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.menu_book,
                        color: Constants.mainColor,
                        size: 30,
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
