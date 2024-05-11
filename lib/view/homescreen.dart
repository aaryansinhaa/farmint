import 'package:farmint_admin_assignment/common/widgets/bottom_nav_bar.dart';
import 'package:farmint_admin_assignment/common/widgets/bottomsheet.dart';
import 'package:farmint_admin_assignment/common/widgets/monthly_card.dart';
import 'package:farmint_admin_assignment/common/widgets/toprow.dart';
import 'package:farmint_admin_assignment/view/add_expense_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'dart:core';
import '../common/constants/colors.dart';
import '../common/widgets/searchbox.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const String routeName = "/home";
  TextEditingController searchController = new TextEditingController();
  List<String> nameOfIcons = ["Home", "Orders", "Expense", "Manage", "Account"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorConstants.blueGrayTop,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          CustomBottomSheet(
              children: TopRow(
                  icon1Path: "assets/vectors/Vector.png",
                  middleText: "Home",
                  icon2Widget: Image.asset("assets/vectors/Vector_2.png"),
                  icon3Path: "assets/vectors/Vector_1.png")),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.20 - 25,
              ),
              CustomSearchBar(controller: searchController),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              MonthlyCard(),
            ],
          )
        ]),
        bottomNavigationBar: BottomNavBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed(AddExpensePage.routeName);
          },
          backgroundColor: ColorConstants.greenFloatingButton,
          shape: const CircleBorder(eccentricity: 0),
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}
