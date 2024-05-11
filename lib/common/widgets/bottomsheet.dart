import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants/colors.dart';

class CustomBottomSheet extends StatelessWidget {
  final Widget children;
  const CustomBottomSheet({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.transparent,
          height: MediaQuery.of(context).size.height * 0.20,
          width: MediaQuery.of(context).size.width,
          child: children,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: ColorConstants.whiteBG,
          ),
          height: MediaQuery.of(context).size.height * 0.80 - 79,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.bottomCenter,
        ),
      ],
    );
  }
}
