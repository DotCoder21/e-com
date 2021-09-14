import 'package:firstproject/View/account/viewOrder.dart';
import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrackOrderScreen extends StatefulWidget {
  @override
  _TrackOrderScreenState createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
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
          title: customText(
            'Track Order',
            textColor: AppColors.headingColor,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 2.0),
                child: customText('Sep 23, 2018',
                    textColor: AppColors.textColor, textSize: 14.0),
              ),
              InkWell(
                onTap: () {
                  Get.to(
                    () => ViewOrder(),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 15.0,
                  ),
                  child: Container(
                    padding: EdgeInsets.all(
                      10.0,
                    ),
                    height: Get.height * 0.3,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(10.0),
                      shape: BoxShape.rectangle,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: AppColors.borderColor,
                          offset: Offset(0.0, 0.75),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                customText('OD-23435232-N',
                                    textColor: AppColors.headingColor,
                                    textSize: 16.0,
                                    fontW: FontWeight.w600),
                                SizedBox(
                                  height: Get.height * 0.02,
                                ),
                                customText('\$4500',
                                    textColor: AppColors.greenColor,
                                    textSize: 12.0),
                                SizedBox(
                                  height: Get.height * 0.07,
                                ),
                                RaisedButton(
                                  onPressed: () {},
                                  color: AppColors.greenColor,
                                  child: customText(
                                    'In Transit',
                                    textColor: AppColors.whiteColor,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: Get.height * 0.1,
                                      width: Get.width * 0.2,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/headPhones.png'),
                                              fit: BoxFit.cover)),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Container(
                                      height: Get.height * 0.1,
                                      width: Get.width * 0.2,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/earpods.png'),
                                              fit: BoxFit.cover)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: Get.height * 0.1,
                                      width: Get.width * 0.2,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/headPhonesBox.png'),
                                              fit: BoxFit.cover)),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Container(
                                      height: Get.height * 0.1,
                                      width: Get.width * 0.2,
//                              color: AppColors.whiteColor,
                                      child: Center(
                                        child: customText(
                                          '+4',
                                          textColor: AppColors.headingColor,
                                          textSize: 20.0,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          border: Border.all(
                                              color: AppColors.borderColor)),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 2.0),
                child: customText('Sep 23, 2018',
                    textColor: AppColors.textColor, textSize: 14.0),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 15.0,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(
                        10.0,
                      ),
                      height: Get.height * 0.3,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(10.0),
                        shape: BoxShape.rectangle,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: AppColors.borderColor,
                            offset: Offset(0.0, 0.75),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  customText('OD-23435232-N',
                                      textColor: AppColors.headingColor,
                                      textSize: 16.0,
                                      fontW: FontWeight.w600),
                                  SizedBox(
                                    height: Get.height * 0.02,
                                  ),
                                  customText('\$4500',
                                      textColor: AppColors.greenColor,
                                      textSize: 12.0),
                                  SizedBox(
                                    height: Get.height * 0.07,
                                  ),
                                  RaisedButton(
                                    onPressed: () {},
                                    color: AppColors.greenColor,
                                    child: customText(
                                      'In Transit',
                                      textColor: AppColors.whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: Get.height * 0.1,
                                        width: Get.width * 0.2,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/headPhones.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Container(
                                        height: Get.height * 0.1,
                                        width: Get.width * 0.2,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/earpods.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: Get.height * 0.1,
                                        width: Get.width * 0.2,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/headPhonesBox.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Container(
                                        height: Get.height * 0.1,
                                        width: Get.width * 0.2,
//                              color: AppColors.whiteColor,
                                        child: Center(
                                          child: customText(
                                            '+4',
                                            textColor: AppColors.headingColor,
                                            textSize: 20.0,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            border: Border.all(
                                                color: AppColors.borderColor)),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 15.0,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(
                        10.0,
                      ),
                      height: Get.height * 0.3,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(10.0),
                        shape: BoxShape.rectangle,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: AppColors.borderColor,
                            offset: Offset(0.0, 0.75),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  customText('OD-23435232-N',
                                      textColor: AppColors.headingColor,
                                      textSize: 16.0,
                                      fontW: FontWeight.w600),
                                  SizedBox(
                                    height: Get.height * 0.02,
                                  ),
                                  customText('\$4500',
                                      textColor: AppColors.greenColor,
                                      textSize: 12.0),
                                  SizedBox(
                                    height: Get.height * 0.07,
                                  ),
                                  RaisedButton(
                                    onPressed: () {},
                                    color: AppColors.greenColor,
                                    child: customText(
                                      'In Transit',
                                      textColor: AppColors.whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: Get.height * 0.1,
                                        width: Get.width * 0.2,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/headPhones.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Container(
                                        height: Get.height * 0.1,
                                        width: Get.width * 0.2,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/earpods.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: Get.height * 0.1,
                                        width: Get.width * 0.2,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/headPhonesBox.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Container(
                                        height: Get.height * 0.1,
                                        width: Get.width * 0.2,
//                              color: AppColors.whiteColor,
                                        child: Center(
                                          child: customText(
                                            '+4',
                                            textColor: AppColors.headingColor,
                                            textSize: 20.0,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            border: Border.all(
                                                color: AppColors.borderColor)),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 15.0,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(
                        10.0,
                      ),
                      height: Get.height * 0.3,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(10.0),
                        shape: BoxShape.rectangle,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: AppColors.borderColor,
                            offset: Offset(0.0, 0.75),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  customText('OD-23435232-N',
                                      textColor: AppColors.headingColor,
                                      textSize: 16.0,
                                      fontW: FontWeight.w600),
                                  SizedBox(
                                    height: Get.height * 0.02,
                                  ),
                                  customText('\$4500',
                                      textColor: AppColors.greenColor,
                                      textSize: 12.0),
                                  SizedBox(
                                    height: Get.height * 0.07,
                                  ),
                                  RaisedButton(
                                    onPressed: () {},
                                    color: AppColors.greenColor,
                                    child: customText(
                                      'In Transit',
                                      textColor: AppColors.whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: Get.height * 0.1,
                                        width: Get.width * 0.2,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/headPhones.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Container(
                                        height: Get.height * 0.1,
                                        width: Get.width * 0.2,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/earpods.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: Get.height * 0.1,
                                        width: Get.width * 0.2,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/headPhonesBox.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Container(
                                        height: Get.height * 0.1,
                                        width: Get.width * 0.2,
//                              color: AppColors.whiteColor,
                                        child: Center(
                                          child: customText(
                                            '+4',
                                            textColor: AppColors.headingColor,
                                            textSize: 20.0,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            border: Border.all(
                                                color: AppColors.borderColor)),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
