import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget customSliverClassContainer(String text1,String text2) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    height: Get.height*0.05,
    width: Get.width*0.4,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        border: Border.all(
          color: AppColors.textColor,
          width: 1,
        )),
    child: Row(
      children: [
        customText(
          text1,
          textColor: AppColors.headingColor,
          textSize: 14.0,
        ),
        Spacer(),
        customText(
          text2,
          textColor: AppColors.headingColor,
          textSize: 14.0,
          fontW: FontWeight.bold
        )
      ],
    ),
  );
}
