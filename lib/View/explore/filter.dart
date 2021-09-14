import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customButtonRow.dart';
import 'package:firstproject/widgets/customColorContainer.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterScreen extends StatefulWidget {
//  var filtermap=[
//    {'title':'Popularity','subtitle':'No Setting'},
//    {'title':'Brands','subtitle':'Apple,Sumnsung,Huawei,B&o'},
//    {'title':'Price','subtitle':'\$30-\$100'},
//    {'title':'Color','subtitle':'No Setting'},
//    {'title':'Rating','subtitle':'4 star'},
//    {'title':'Shipped From','subtitle':'No Setting'},
//  ];
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          elevation: 0,
          centerTitle: true,
          leading: Icon(
            Icons.keyboard_arrow_down,
            size: 15.0,
            color: AppColors.headingColor,
          ),
          title: customText('Filter', textColor: AppColors.headingColor),
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
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      ExpansionTile(
                        title: customText('Popular',
                            textColor: AppColors.headingColor,
                            textSize: 18.0,
                            fontW: FontWeight.w600),
                        subtitle: customText(
                          'No setting',
                          textSize: 12.0,
                        ),
                        children: [],
                      ),
                      ExpansionTile(
                        title: customText('Price',
                            textColor: AppColors.headingColor,
                            textSize: 18.0,
                            fontW: FontWeight.w600),
                        subtitle: customText(
                          '\$30-\$1200',
                          textSize: 12.0,
                        ),
                        children: [
                          Container(
                            height: Get.height * 0.2,
                            child: RangeSlider(
                              values: _currentRangeValues,
                              min: 0,
                              max: 1500,

                              divisions: 10,
                              activeColor: AppColors.greenColor,
                              //inactiveColor: AppColors.whiteColor,
                              labels: RangeLabels(
                                _currentRangeValues.start.round().toString(),
                                _currentRangeValues.end.round().toString(),
                              ),
                              onChanged: (RangeValues values) {
                                setState(() {
                                  _currentRangeValues = values;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      ExpansionTile(
                        title: customText('Brands',
                            textColor: AppColors.headingColor,
                            textSize: 18.0,
                            fontW: FontWeight.w600),
                        subtitle: customText(
                          'Apple,Sumsung,Huawei,B&o',
                          textSize: 12.0,
                        ),
                        children: [],
                      ),
                      ExpansionTile(
                        title: customText('Color',
                            textColor: AppColors.headingColor,
                            textSize: 18.0,
                            fontW: FontWeight.w600),
                        subtitle: customText(
                          'No Setting',
                          textSize: 12.0,
                        ),
                        children: [
                          Container(
                            height: Get.height * 0.15,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                customColorContainer(AppColors.headingColor),
                                customColorContainer(AppColors.greenColor),
                                customColorContainer(AppColors.containerColor),
                                customColorContainer(AppColors.reviewColor),
                                customColorContainer(AppColors.textColor),
                                customColorContainer(AppColors.searchFieldColor),
                              ],
                            ),
                          )
                        ],
                      ),
                      ExpansionTile(
                        title: customText('Rating',
                            textColor: AppColors.headingColor,
                            textSize: 18.0,
                            fontW: FontWeight.w600),
                        subtitle: customText('4 star', textSize: 12.0),
                        children: [],
                      ),
                      ExpansionTile(
                        title: customText('Shipped From',
                            textColor: AppColors.headingColor,
                            textSize: 18.0,
                            fontW: FontWeight.w600),
                        subtitle: customText('No Setting', textSize: 12.0),
                        children: [],
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(child: Align(alignment: Alignment.bottomRight,child: customButtonRow('CANCEL', 'APPLY',()
              {

              }),),),
            ],
          ),
        )
      ),
    );
  }
}
