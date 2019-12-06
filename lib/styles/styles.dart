import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

abstract class Styles {
  static const Color primaryColor = Color(0xff32C5FF);
  static const Color contentColor = Color(0xff929292);
  
  static const Color whiteColor = Color(0xffffffff);

  static const headPageText = TextStyle(
    color: primaryColor,
    fontSize: 28.0,
    fontWeight: FontWeight.w800,
  );

  static const textColorPrimary = TextStyle(
    color: primaryColor,
  );

  static const bottomNavigation = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
  );

  static const cardFirtSumaryItemText = TextStyle(
    color: whiteColor,
    fontWeight: FontWeight.w700,
    fontSize: 28.0
  );

  static const cardSecondarySumaryItemText = TextStyle(
    color: whiteColor,
    fontWeight: FontWeight.w300,
    fontSize: 16.0
  );

}
