import 'package:farmint_admin_assignment/common/customthemedata.dart';
import 'package:farmint_admin_assignment/view/add_expense_page.dart';
import 'package:farmint_admin_assignment/view/homescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomThemeData.themeData,
      routes: {
        "/": (context) => const HomeScreen(),
        "/home": (context) => const HomeScreen(),
        AddExpensePage.routeName: (context) => AddExpensePage(),
      },
    );
  }
}
