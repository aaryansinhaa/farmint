import 'package:farmint_admin_assignment/common/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomThemeData {
  CustomThemeData._();
  static ThemeData themeData = ThemeData(
    useMaterial3: true,
    textTheme: GoogleFonts.montserratTextTheme(),
    scaffoldBackgroundColor: ColorConstants.blueGrayTop,
  );
  static TextStyle textStyleTop = GoogleFonts.montserrat(
    color: ColorConstants.whiteBG,
    fontWeight: FontWeight.w500,
    fontSize: 20,
  );
  static BoxDecoration IconboxDecorationTop = BoxDecoration(
      color: ColorConstants.whiteBG, borderRadius: BorderRadius.circular(9));
}
