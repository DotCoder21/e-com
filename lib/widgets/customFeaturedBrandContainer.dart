import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget customFeaturedBrandsContainer(String title,String subTitle,String image,) {
  return Container(
    height: Get.height * 0.1,
    width: Get.width*0.04,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: ListTile(
      leading: Container(
        height: Get.height * 0.2,
        width: Get.width * 0.1,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(image),
            )),
      ),
      title: customText(
        title,
        textColor: AppColors.headingColor,
        textSize: 16.0,
        fontW: FontWeight.bold
      ),
      subtitle: customText(
        subTitle,
        textColor: AppColors.textColor,
        textSize: 12.0,
      ),
    ),
  );
}
