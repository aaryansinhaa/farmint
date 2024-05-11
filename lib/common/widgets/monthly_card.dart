import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MonthlyCard extends StatefulWidget {
  const MonthlyCard({super.key});

  @override
  State<MonthlyCard> createState() => _MonthlyCardState();
}

class _MonthlyCardState extends State<MonthlyCard> {
  var currentTime = DateTime.now();
  var currentMonth = DateTime.now().month;
  var currentYear = DateTime.now().year;
  String _getMonthName(int month) {
    switch (month) {
      case 1:
        return 'January';
      case 2:
        return 'February';
      case 3:
        return 'March';
      case 4:
        return 'April';
      case 5:
        return 'May';
      case 6:
        return 'June';
      case 7:
        return 'July';
      case 8:
        return 'August';
      case 9:
        return 'September';
      case 10:
        return 'October';
      case 11:
        return 'November';
      case 12:
        return 'December';
      default:
        return '';
    }
  }

  List<String> buttonNames = ["Daily", "Calendar", "Monthly", "Total", "Note"];

  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3),
              color: Colors.black12,
              blurRadius: 6,
            ),
          ],
          color: Colors.white),
      margin: EdgeInsets.symmetric(horizontal: 19, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.calendar_today_outlined,
                  size: 24,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                Text(
                  _getMonthName(currentMonth) + " " + currentYear.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.2,
                ),
                Icon(
                  Icons.keyboard_arrow_left,
                  size: 25,
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  size: 25,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
              color: ColorConstants.whiteBG,
            ),
            height: 40,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 0),
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.025),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    buttonNames[index],
                                    style: TextStyle(
                                      color: index == currentIndex
                                          ? ColorConstants.blueGrayTop
                                          : Colors.grey.shade300,
                                      fontSize: 14,
                                      fontWeight: index == currentIndex
                                          ? FontWeight.w600
                                          : null,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: (index < 4) ? 12 : 0,
                                  child: VerticalDivider(
                                    width: 1,
                                    thickness: 1,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        height: currentIndex == index ? 5 : 0,
                        width: 60,
                        decoration: BoxDecoration(
                          color: currentIndex == index
                              ? ColorConstants.blueGrayTop
                              : Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
