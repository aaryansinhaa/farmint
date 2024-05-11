import 'package:farmint_admin_assignment/common/constants/colors.dart';
import 'package:farmint_admin_assignment/common/widgets/bottomsheet.dart';
import 'package:farmint_admin_assignment/common/widgets/toprow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddExpensePage extends StatelessWidget {
  static const String routeName = "/addExpense";
  AddExpensePage({super.key});
  final List<String> buttonName = ["Income", "Expense", "Transfer"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomBottomSheet(
            children: TopRow(
              icon1Path: "assets/vectors/Expand_left.png",
              middleText: "Expense",
              icon3Path: "assets/vectors/Vector_4.png",
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.20 - 25,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: ColorConstants.whiteBG,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 6,
                        offset: Offset(0, 3),
                        color: Colors.black.withOpacity(0.1))
                  ],
                ),
                height: 55,
                width: 350,
                child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => InkWell(
                          onTap: () {},
                          child: Text(
                            buttonName[index],
                            style: TextStyle(color: Colors.black),
                          ),
                        )),
              )
            ],
          )
        ],
      ),
    );
  }
}
