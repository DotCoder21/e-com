import 'package:firstproject/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget customCodeTextField() {
  return Container(
    height: Get.height * 0.06,
    width: Get.width * 0.1,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      border: Border.all(
        color: AppColors.borderColor,
        width: 1,
      ),
    ),
    child: TextField(
      decoration: InputDecoration(
        border: InputBorder.none
      ),
    ),
  );
}
