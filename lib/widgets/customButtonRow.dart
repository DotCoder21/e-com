import 'package:firstproject/View/checkOut/checkout.dart';
import 'package:firstproject/View/checkOut/orderSummary.dart';
import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget customButtonRow(String text, String btnText,VoidCallback onPressed) {
  return Container(
    color: AppColors.whiteColor,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          onPressed: () {
            Get.to(()=>OrderSummaryScreen(),);
          },
          child: customText(text),
        ),
        RaisedButton(
          color: AppColors.greenColor,
          onPressed: onPressed,
          child: customText(btnText, textColor: AppColors.whiteColor),
        )
      ],
    ),
  );
}
