import 'exploreCategoriesItemDetails.dart';
import 'package:firstproject/models/recommendedModel.dart';
import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customButtonRow.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreCategoriesBo extends StatefulWidget {
  @override
  _ExploreCategoriesBoState createState() => _ExploreCategoriesBoState();
}

class _ExploreCategoriesBoState extends State<ExploreCategoriesBo> {
  List<String> tabList = ['All', 'HeadPhones', 'Speakers', 'microPhones'];

  List<RecommentList> recommendedList = [
    RecommentList(
      'assets/images/speaker.png',
      'Speaker',
      'Tesla inc',
      '\$790',
    ),
    RecommentList(
      'assets/images/watch.jpg',
      'Watch',
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

  String selectedTab = 'All';

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
          title: customText('B&o', textColor: AppColors.headingColor),
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
                  children: [
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Container(
                      height: Get.height * 0.06,
                      child: buildTabListView(),
                    ),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    buildRecommendedList(),

                  ],
                ),
              ),
            ),
            Flexible(flex: 1,child: Align(
              alignment: Alignment.bottomCenter,
              child: customButtonRow('No Filters Applied', 'FILTER',()
              {

              }),
            ),)
          ],
        ),
      ),
    );
  }

  buildRecommendedList() {
    return Container(
      height: Get.height * 0.7,
      child: GridView.builder(
          itemCount: recommendedList.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 0.6,
            crossAxisSpacing: 6,
            mainAxisSpacing: 4,
          ),
          itemBuilder: (ctx, i) {
            return InkWell(
              onTap: ()=>Get.to(()=>ExploreCategoriesItemDetails(image: recommendedList[i].iconImage,
                title: recommendedList[i].title,)),
              child: Hero(
                tag: 'dash',
                child: Container(
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
                          textColor: AppColors.headingColor,fontW: FontWeight.w600,),
                      customText(recommendedList[i].subTitle,
                          textColor: AppColors.textColor, textSize: 12.0),
                      customText(recommendedList[i].price,
                          textColor: AppColors.greenColor, textSize: 16.0)
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }

  buildTabListView() {
    return ListView.builder(
      itemCount: tabList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (ctx, i) {
        return TextButton(
          onPressed: () {
            setState(() {
              selectedTab = tabList[i];
            });
          },
          child: customText(tabList[i]),
        );
      },
    );
  }
}
