import 'package:firstproject/models/recommendedModel.dart';
import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customButtonRow.dart';
import 'package:firstproject/widgets/customFeaturedBrandContainer.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ExploreCategoriesB&o.dart';

class ExploreCategoriesScreen extends StatelessWidget {
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
      'IPAD',
      'Apple inc',
      '\$120',
    ),
    RecommentList(
      'assets/images/smart.jpg',
      'Smart Watch',
      'Apple inc',
      '\$120',
    ),
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
          title: customText('Categories', textColor: AppColors.headingColor),
          actions: [
            Container(
              height: Get.height * 0.05,
              width: Get.width * 0.12,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.containerColor),
              child: Icon(
                Icons.search,
                color: AppColors.whiteColor,
              ),
            ),
            SizedBox(
              width: 5.0,
            )
          ],
        ),
        body: Column(
          children: [
            Flexible(
              flex: 10,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: customText(
                        'Top Brands',
                        textColor: AppColors.headingColor,
                        textSize: 18.0,
                        fontW: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(
                          () => ExploreCategoriesBo(),
                        );
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: customFeaturedBrandsContainer(
                              'Apple Inc',
                              '5693 Products',
                              'assets/images/Icon_Apple.png',
                            ),
                          ),
                          Expanded(
                            child: customFeaturedBrandsContainer(
                              'B&o',
                              '1124 Products',
                              'assets/images/Icon_B&o.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    buildRecommendedList(),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: customButtonRow('No filters Applied', 'FILTER',()
                {

                }),
              ),
            )
          ],
        ),
      ),
    );
  }

  buildRecommendedList() {
    return Container(
      child: GridView.builder(
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
                    width: Get.height * 0.4,
                  ),
                  customText(recommendedList[i].title,
                      textColor: AppColors.headingColor,
                      fontW: FontWeight.w600),
                  customText(recommendedList[i].subTitle,
                      textColor: AppColors.textColor, textSize: 12.0),
                  customText(recommendedList[i].price,
                      textColor: AppColors.greenColor, textSize: 16.0)
                ],
              ),
            );
          }),
    );
  }
}
