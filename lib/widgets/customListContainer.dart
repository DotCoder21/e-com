import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget customListContainer(String text,)
{
  return Column(
    children: [
      Container(
        height: Get.height * 0.07,
        width: Get.width * 0.15,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: AppColors.whiteColor),
        child: Image(
          image: AssetImage('assets/images/Icon_Mens Shoe.png'),
        )
      ),
      customText(
        text,
      )
    ],
  );
}