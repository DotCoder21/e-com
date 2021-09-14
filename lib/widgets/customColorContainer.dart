import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget customColorContainer(Color color)
{
  return Container(
    height: Get.height * 0.06,
    width: Get.width * 0.1,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10.0),
    ),
  );
}