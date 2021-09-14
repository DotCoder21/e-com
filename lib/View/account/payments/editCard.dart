import 'package:firstproject/View/account/shippingAddress.dart';
import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customButtonRow.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:firstproject/widgets/customTextfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditCard extends StatefulWidget {
  @override
  _EditCardState createState() => _EditCardState();
}

class _EditCardState extends State<EditCard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          elevation: 0,
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back_ios,
            size: 15.0,
            color: AppColors.headingColor,
          ),
          title: customText(
            'Edit Card',
            textColor: AppColors.headingColor,
          ),
        ),
        body: Container(
          height: Get.height,
          child: Column(
            children: [
              Flexible(
                flex: 10,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            () => ShippingAddress(),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.0,
                            vertical: 10.0,
                          ),
                          height: Get.height * 0.3,
                          width: double.infinity,
                          child: Card(
                            color: AppColors.rightSlidableColor,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.0,
                                vertical: 10.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: customText(
                                      'VISA',
                                      textColor: AppColors.whiteColor,
                                      textSize: 12.0,
                                    ),
                                  ),
                                  customText(
                                    '4560\t\t5674\t\t3224\t\t4543',
                                    textColor: AppColors.whiteColor,
                                    textSize: 20,
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          customText('Card holder:',
                                              textColor: AppColors.whiteColor,
                                              textSize: 12.0),
                                          SizedBox(
                                            height: Get.height * 0.01,
                                          ),
                                          customText(
                                            'David Spade',
                                            textColor: AppColors.whiteColor,
                                            textSize: 18.0,
                                          )
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          customText('Expiry:',
                                              textColor: AppColors.whiteColor,
                                              textSize: 12.0),
                                          SizedBox(
                                            height: Get.height * 0.01,
                                          ),
                                          customText(
                                            '09 - 18',
                                            textColor: AppColors.whiteColor,
                                            textSize: 18.0,
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: Get.height*0.53,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15.0,
                                vertical: 15.0,
                              ),
                              child: customText(
                                'Name on card',
                                textColor: AppColors.headingColor,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15.0,
                                vertical: 10.0,
                              ),
                              child: customTextfield(
                                'David Spade',
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15.0,
                                  vertical: 10.0,
                                ),
                                child: customText('Card Number',
                                    textColor: AppColors.headingColor)),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15.0,
                                vertical: 10.0,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: '2344 2344 2312 2345',
                                    suffixIcon: Image(
                                      image: AssetImage('assets/images/card_icon.png'),
                                    )),
                              ),
                            ),
                            Container(
                              height: Get.height * 0.2,
                              width: Get.height,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15.0, vertical: 10.0),
                                          child:
                                              customText('Expiry Date', textSize: 14.0),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.symmetric(horizontal: 15.0),
                                          child: customTextfield(
                                            'kpk',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15.0, vertical: 10.0),
                                          child: customText('CVV', textSize: 14.0),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.symmetric(horizontal: 15.0),
                                          child: customTextfield(
                                            'pakistan',
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: customButtonRow('CANCEL', "SAVE",()
                  {

                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
