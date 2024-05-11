import 'package:flutter/cupertino.dart';

import '../customthemedata.dart';

class TopRow extends StatelessWidget {
  final String icon1Path;
  final String middleText;
  final Widget? icon2Widget;
  final String icon3Path;

  const TopRow({
    super.key,
    required this.icon1Path,
    required this.middleText,
    this.icon2Widget,
    required this.icon3Path,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 61),
            height: 36,
            width: 36,
            decoration: CustomThemeData.IconboxDecorationTop,
            child: Image.asset(icon1Path),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 68, horizontal: 75),
          child: Text(
            middleText,
            style: CustomThemeData.textStyleTop,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 69,
          ),
          child: icon2Widget,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 61),
            height: 36,
            width: 36,
            decoration: CustomThemeData.IconboxDecorationTop,
            child: Image.asset(icon3Path),
          ),
        ),
      ],
    );
  }
}
