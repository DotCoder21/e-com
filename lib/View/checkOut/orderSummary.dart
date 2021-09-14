import 'package:firstproject/models/bestSellingModel.dart';
import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customButtonRow.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderSummaryScreen extends StatefulWidget {
  @override
  _OrderSummaryScreenState createState() => _OrderSummaryScreenState();
}

class _OrderSummaryScreenState extends State<OrderSummaryScreen> {

  int _value=1;
  List<BestSellingModel> bestSellingList = [
    BestSellingModel('assets/images/speaker.png', 'Beo Play Speaker',
        'Bang and Olufson', '\$755',1),
    BestSellingModel(
        'assets/images/watch.jpg', 'Leath1er WristWatch', 'Tag Heuer', '\$450',2),
    BestSellingModel('assets/images/speaker.png', 'Beo Play Speaker',
        'Bang and Olufson', '\$755',1),
    BestSellingModel(
        'assets/images/watch.jpg', 'Leather WristWatch', 'Tag Heuer', '\$450',3),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          elevation: 0,
          centerTitle: true,
          leading: GestureDetector(
            onTap: (){
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 15.0,
              color: AppColors.headingColor,
            ),
          ),
          title: customText(
            'Summary',
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Get.height * 0.04,
                      ),
                      buildBestSellingList(),
                      ListTile(
                        title: customText('Shipping Address\n',
                            textColor: AppColors.headingColor,
                            textSize: 18.0,
                            fontW: FontWeight.bold),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customText(
                              '21, Alex Davidson Avenue, Opposite\n'
                              ' Omegatron, Vicent Smith Quarters,\n'
                              ' Victoria Island, Lagos, Nigeria',
                              textColor: AppColors.headingColor,
                              textSize: 14.0,
                            ),
                          ],
                        ),
                        trailing: Radio(
                          value: 1,
                          groupValue: _value,
                          activeColor: AppColors.greenColor,
                          onChanged: (value) {
                            setState(() {
                              value=_value;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                        child: customText(
                          'Change',
                          textColor: AppColors.greenColor,
                          textSize: 14.0,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Divider(
                          height: 1,
                          color: AppColors.borderColor,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                        child: customText('paynment',
                            textColor: AppColors.headingColor,
                            textSize: 18.0,
                            fontW: FontWeight.bold),
                      ),
                      ListTile(
                        leading: Image(
                          image: AssetImage('assets/images/card_icon.png'),
                        ),
                        title: customText(
                          'Master Card',
                          textColor: AppColors.textColor,
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customText(
                              '**** **** **** 4245',
                              textColor: AppColors.headingColor,
                              textSize: 14.0,
                            ),
                          ],
                        ),
                        trailing: Radio(
                          value: 1,
                          groupValue: _value,
                          activeColor: AppColors.greenColor,
                          onChanged: (value) {
                            setState(() {
                              value=_value;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10.0),
                        child: customText(
                          'Change',
                          textColor: AppColors.greenColor,
                          textSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: customButtonRow('BACK', 'NEXT',()
                    {
                      setState(() {

                      });
                    }),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  buildBestSellingList() {
    return Container(
      height: Get.height * 0.3,
      width: Get.width,
      child: ListView.builder(
        itemCount: bestSellingList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, i) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(bestSellingList[i].iconImage),
                  height: Get.height * 0.15,
                  width: Get.width * 0.4,
                  fit: BoxFit.cover,
                ),
                customText(bestSellingList[i].title,
                    textColor: AppColors.headingColor, fontW: FontWeight.w600),
                customText(bestSellingList[i].price,
                    textColor: AppColors.greenColor, textSize: 12.0)
              ],
            ),
          );
        },
      ),
    );
  }
}
