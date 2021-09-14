import 'package:firstproject/View/account/payments/editCard.dart';
import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardsScreen extends StatefulWidget {
  @override
  _CardsScreenState createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
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
              buildCards(),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.0,
                  ),
                  child: RaisedButton(
                    color: AppColors.greenColor,
                    onPressed: () {
                      Get.to(
                        () => EditCard(),
                      );
                    },
                    child: customText('NEW', textColor: AppColors.whiteColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildCards() {
    return ListView.builder(
      itemCount: 2,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (ctx, i) {
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 10.0,
          ),
          height: Get.height * 0.3,
          width: double.infinity,
          child: Card(
            color: i%2==0?AppColors.rightSlidableColor:AppColors.greenColor,
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
                              textColor: AppColors.whiteColor, textSize: 12.0),
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
                              textColor: AppColors.whiteColor, textSize: 12.0),
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
        );
      },
    );
  }
}
