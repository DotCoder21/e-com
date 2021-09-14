import 'package:firstproject/utils/appColors.dart';
import 'package:flutter/material.dart';

Widget customTextfield(String hintText,){
  return TextFormField(
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        color: AppColors.borderColor,
      ),
    ),
  );
}