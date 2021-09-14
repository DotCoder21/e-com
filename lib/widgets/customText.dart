import 'package:firstproject/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: non_constant_identifier_names
Widget customText(String text,{Color textColor=AppColors.textColor,double textSize=14.0,FontWeight fontW=FontWeight.normal})
{
  return Text(
    text,
    style: TextStyle(
      color: textColor,
      fontSize: textSize,
      fontWeight: fontW,
      fontFamily: 'SF Pro Display'
    ),
  );
}