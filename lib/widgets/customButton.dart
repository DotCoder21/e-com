import 'package:firstproject/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'customText.dart';

Widget customButton(String text,VoidCallback onPressed,)
{
  return  ClipRRect(
    borderRadius: BorderRadius.circular(10.0),
    child: Container(
      width: Get.width,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: RaisedButton(
        color: AppColors.greenColor,
        child: customText(text,
            textColor: AppColors.whiteColor),
        onPressed: onPressed,
      ),
    ),
  );
}