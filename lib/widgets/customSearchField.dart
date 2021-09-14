import 'dart:io';

import 'package:firstproject/View/explore/explore.dart';
import 'package:firstproject/controllers/imagePicker.dart';
import 'package:firstproject/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

ImagePickerController imagePickerController = ImagePickerController();


Widget customSearchField(BuildContext  context) {
  return Row(
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
        child: Container(
          height: Get.height*0.06,
          width: MediaQuery.of(context).size.width-100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.grey.shade300
          ),
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                border: InputBorder.none,
                fillColor: AppColors.searchFieldColor,
                prefixIcon: Icon(
                  Icons.search,
                  color: AppColors.headingColor,
                )),
          ),
        ),
      ),
      GestureDetector(
        onTap: (){
         //todo
          imagePickerController.imgFromCamera();
        },
        child: Container(
          height: Get.height * 0.07,
          width: Get.width * 0.15,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: AppColors.containerColor),
          child: Icon(
            Icons.camera_alt_outlined,
            color: AppColors.whiteColor,
          ),
        ),
      )
    ],
  );
}
