import 'package:firstproject/utils/appColors.dart';
import 'package:flutter/material.dart';

import 'customText.dart';

Widget customContainer(BuildContext context,String image, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.0,
        ),
        border: Border.all(
          color: AppColors.borderColor,
          width: 2.0,
        ),
      ),
      height: 40.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(image,height: 20,width: 20,),
          customText(
            text,
            textColor: AppColors.headingColor,
          ),

        ],
      ),
    ),
  );
}
