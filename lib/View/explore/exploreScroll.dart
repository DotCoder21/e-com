import 'package:firstproject/models/recommendedModel.dart';
import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customFeaturedBrandContainer.dart';
import 'package:firstproject/widgets/customSearchField.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ExploreScrollScreen extends StatelessWidget {
  List<RecommentList> recommendedList = [
    RecommentList(
      'assets/images/speaker.png',
      'Wireless Remote',
      'Tesla inc',
      '\$790',
    ),
    RecommentList(
      'assets/images/watch.jpg',
      'Airpods',
      'Apple inc',
      '\$120',
    ),
    RecommentList(
      'assets/images/printer.jpg',
      'Printer',
      'Apple inc',
      '\$120',
    ),
    RecommentList(
      'assets/images/laptop.jpg',
      'Laptop',
      'Apple inc',
      '\$120',
    ),
    RecommentList(
      'assets/images/ipad.jpg',
      'Wireless Remote',
      'Apple inc',
      '\$120',
    ),
    RecommentList(
      'assets/images/smart.jpg',
      'Airpods',
      'Apple inc',
      '\$120',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.02,
              ),
              customSearchField(context),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  height: Get.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/Promo Image.png'),
                      )),
                ),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: customText('Featured Brands',
                    textColor: AppColors.headingColor, textSize: 18.0,
                fontW: FontWeight.bold,),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Row(
                children: [
                  Expanded(
                    child: customFeaturedBrandsContainer(
                      'B&O',
                      '5693 Products',
                      'assets/images/Icon_B&o.png',
                    ),
                  ),
                  Expanded(
                    child: customFeaturedBrandsContainer(
                      'Beats',
                      '1124 Products',
                      'assets/images/path.png',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    customText(
                      'Recommended',
                      textSize: 18.0,
                      textColor: AppColors.headingColor,
                      fontW: FontWeight.bold
                    ),
                    Spacer(),
                    customText('See all',
                        textColor: AppColors.greenColor, textSize: 16.0)
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              buildRecommendedList()
            ],
          ),
        ),
      ),
    );
  }

  buildRecommendedList() {
    return GridView.builder(
        itemCount: recommendedList.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 0.6,
          crossAxisSpacing: 6,
          mainAxisSpacing: 4,
        ),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (ctx, i) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(recommendedList[i].iconImage),
                  height: Get.height * 0.35,
                  width: Get.height*0.4,
                ),
                customText(recommendedList[i].title,
                    textColor: AppColors.headingColor,fontW: FontWeight.w600),
                customText(recommendedList[i].subTitle,
                    textColor: AppColors.textColor, textSize: 12.0),
                customText(recommendedList[i].price,
                    textColor: AppColors.greenColor, textSize: 16.0)
              ],
            ),
          );
        });
  }
}
