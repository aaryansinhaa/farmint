import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<String> nameOfIcons = ["Home", "Orders", "Expense", "Manage", "Account"];
  List<IconData> listOfIcons = [
    Icons.home,
    Icons.event_note,
    Icons.dashboard_outlined,
    Icons.store,
    Icons.person_2_rounded
  ];
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(color: ColorConstants.whiteBG, boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 25,
            offset: Offset(0, -20),
          )
        ]),
        height: 79,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: currentIndex == index ? 5 : 0,
                    width: 60,
                    decoration: BoxDecoration(
                      color: currentIndex == index
                          ? ColorConstants.blueGrayTop
                          : Colors.black,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 2, 15, 15),
                    child: Column(
                      children: [
                        Icon(
                          listOfIcons[index],
                          size: MediaQuery.of(context).size.width * 0.075,
                          color: index == currentIndex
                              ? ColorConstants.blueGrayTop
                              : Colors.grey.shade300,
                        ),
                        Text(
                          nameOfIcons[index],
                          style: TextStyle(
                            color: index == currentIndex
                                ? ColorConstants.blueGrayTop
                                : Colors.grey.shade300,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
