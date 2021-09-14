import 'package:firstproject/View/explore/exploreCategoriesItemDetails.dart';
import 'package:firstproject/models/bestSellingModel.dart';
import 'package:firstproject/models/categoriesModel.dart';
import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customSearchField.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'exploreCategories.dart';
import 'exploreScroll.dart';

class ExploreScreen extends StatefulWidget {
//  File? _image;
//
//  final picker = ImagePicker();
//
//  imgFromCamera() async {
//    await picker
//        .pickImage(
//        source: ImageSource.camera,
//        maxHeight: 400,
//        maxWidth: 300,
//        imageQuality: 50)
//        .then((value) {
//      _image = File(value!.path);
//      setState(() {});
//    });
//  }

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  List<CategoriesModel> categoriesList = [
    CategoriesModel('assets/images/Icon_Devices.png', 'Devices'),
    CategoriesModel('assets/images/Icon_Gadgets.png', 'Gadgets'),
    CategoriesModel('assets/images/Icon_Gaming.png', 'Gaming'),
    CategoriesModel('assets/images/Icon_Mens Shoe.png', 'Man'),
    CategoriesModel('assets/images/Icon_Womens Shoe.png', 'Woman'),
  ];

  List<BestSellingModel> bestSellingList = [
    BestSellingModel('assets/images/speaker.png', 'Beo Play Speaker',
        'Bang and Olufson', '\$755',1),
    BestSellingModel(
        'assets/images/watch.jpg', 'Leather WristWatch', 'Tag Heuer', '\$450',2),
    BestSellingModel(
        'assets/images/ipad.jpg', 'IPAD', 'Bang and Olufson', '\$450',1),
    BestSellingModel(
        'assets/images/laptop.jpg', 'Laptop', 'Tag Heuer', '\$450',2),
    BestSellingModel(
        'assets/images/smart.jpg', 'Smart Watch', 'Bang and Olufson', '\$450',3),
    BestSellingModel(
        'assets/images/printer.jpg', 'Printer', 'Tag Heuer', '\$450',2),
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
              SizedBox(
                height: Get.height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.0,
                ),
                child: customText(
                  'Categories',
                  textColor: AppColors.headingColor,
                  textSize: 15.0,
                  fontW: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              buildListView(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    customText(
                      'Best Selling',
                      textSize: 18.0,
                      textColor: AppColors.headingColor,
                      fontW: FontWeight.bold,
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
              buildBestSellingGrid(),
            ],
          ),
        ),
      ),
    );
  }

  buildListView() {
    return InkWell(
      onTap: () {
        Get.to(
          () => ExploreCategoriesScreen(),
        );
      },
      child: Container(
        height: Get.height * 0.11,
        child: ListView.builder(
          itemCount: categoriesList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (cxt, i) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Container(
                    height: Get.height * 0.06,
                    width: Get.width * 0.06,
                    decoration: BoxDecoration(boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: AppColors.borderColor,
                          offset: Offset(0.0, 0.35))
                    ], shape: BoxShape.circle, color: AppColors.whiteColor),
                    child: Image(
                      image: AssetImage(categoriesList[i].iconImage),
                      height: Get.height * 0.01,
                      width: Get.width * 0.02,
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  customText(
                    categoriesList[i].title,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  buildBestSellingGrid() {
    return InkWell(
      onTap: () => Get.to(
        () => ExploreScrollScreen(),
      ),
      child: Container(
//        height: Get.height * 0.5,

        child: GridView.builder(
            itemCount: bestSellingList.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.6,
              crossAxisSpacing: 6,
              mainAxisSpacing: 4,
            ),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (ctx, i) {
              return InkWell(
                onTap: () {
                  Get.to(
                    () => ExploreCategoriesItemDetails(
                      image: bestSellingList[i].iconImage,
                      title: bestSellingList[i].title,
                      bestSellingModel: bestSellingList[i],
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage(bestSellingList[i].iconImage),
                        height: Get.height * 0.35,
                        width: Get.height * 0.4,
                      ),
                      customText(bestSellingList[i].title,
                          textColor: AppColors.headingColor,
                          fontW: FontWeight.w600),
                      customText(bestSellingList[i].subTitle,
                          textColor: AppColors.textColor, textSize: 12.0),
                      customText(bestSellingList[i].price,
                          textColor: AppColors.greenColor, textSize: 16.0)
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
