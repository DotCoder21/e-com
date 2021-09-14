import 'package:firstproject/View/account/stepper.dart';
import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewOrder extends StatefulWidget {
  @override
  _ViewOrderState createState() => _ViewOrderState();
}

class _ViewOrderState extends State<ViewOrder> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          elevation: 0,
          centerTitle: true,
          leading: GestureDetector(
            onTap: ()
            {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 15.0,
              color: AppColors.headingColor,
            ),
          ),
          title: customText('OD-23435232-N', textColor: AppColors.headingColor,),
        ),
        body: Container(
          height: Get.height,
          width: Get.width,
          child: ViewOrderStepper(),
        ),
      ),
    );
  }
}
