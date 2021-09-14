import 'package:firstproject/models/bestSellingModel.dart';
import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchSceen extends StatefulWidget {
  @override
  _SearchSceenState createState() => _SearchSceenState();
}

class _SearchSceenState extends State<SearchSceen> {
  List<BestSellingModel> bestSellingList = [
    BestSellingModel('assets/images/speaker.png', 'Beo Play Speaker',
        'Bang and Olufson', '\$755',2),
    BestSellingModel(
        'assets/images/watch.png', 'Leather WristWatch', 'Tag Heuer', '\$450',1),
    BestSellingModel('assets/images/speaker.png', 'Beo Play Speaker',
        'Bang and Olufson', '\$755',3),
    BestSellingModel(
        'assets/images/watch.png', 'Leather WristWatch', 'Tag Heuer', '\$450',2),
    BestSellingModel('assets/images/speaker.png', 'Beo Play Speaker',
        'Bang and Olufson', '\$755',2),
    BestSellingModel(
        'assets/images/watch.png', 'Leather WristWatch', 'Tag Heuer', '\$450',1),
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
                height: Get.height * 0.1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 10.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: AppColors.borderColor,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Here will be the search text',
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColors.headingColor,
                      ),
                      suffixIcon: Icon(Icons.cancel),
                    ),
                  ),
                ),
              ),
              searchTagList(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 20.0,
                ),
                child: customText(
                  'Recent Searches',
                  textColor: AppColors.textColor,
                  textSize: 14.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ActionChip(
                    label: customText(
                      'Shoes',
                      textColor: AppColors.headingColor,
                    ),
                    onPressed: () {},
                  ),
                  ActionChip(
                    label: customText(
                      'Sport Wears',
                      textColor: AppColors.headingColor,
                    ),
                    onPressed: () {},
                  ),
                  ActionChip(
                    label: customText(
                      'Caps',
                      textColor: AppColors.headingColor,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ActionChip(
                    label: customText(
                      'Bang and Olufsen',
                      textColor: AppColors.headingColor,
                    ),
                    onPressed: () {},
                  ),
                  ActionChip(
                    label: customText(
                      'Mackbook',
                      textColor: AppColors.headingColor,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ActionChip(
                    label: customText(
                      'Apple',
                      textColor: AppColors.headingColor,
                    ),
                    onPressed: () {},
                  ),
                  ActionChip(
                    label: customText(
                      'Shoes',
                      textColor: AppColors.headingColor,
                    ),
                    onPressed: () {},
                  ),
                  ActionChip(
                    label: customText(
                      'Sport wears',
                      textColor: AppColors.headingColor,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 10.0
                ),
                child: customText(
                  'Recommended',
                  textColor: AppColors.headingColor,
                  textSize: 20.0,
                  fontW: FontWeight.bold
                ),
              ),
              buildBestSellingGrid(),
            ],
          ),
        ),
      ),
    );
  }


  buildBestSellingGrid() {
    return InkWell(
      onTap: ()=>Get.to(()=>SearchSceen(),),
      child: Container(
        height: Get.height * 0.5,
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
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage(bestSellingList[i].iconImage),
                      height: Get.height * 0.35,
                      width: Get.height*0.4,
                    ),
                    customText(bestSellingList[i].title,
                        textColor: AppColors.headingColor,fontW: FontWeight.w600),
                    customText(bestSellingList[i].subTitle,
                        textColor: AppColors.textColor, textSize: 12.0),
                    customText(bestSellingList[i].price,
                        textColor: AppColors.greenColor, textSize: 16.0)
                  ],
                ),
              );
            }),
      ),
    );
  }

  searchTagList() {
    return ListView.builder(
      itemCount: 6,
      shrinkWrap: true,
      itemBuilder: (ctx, i) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 10.0,
          ),
          child: customText('Iphone Xs Max',
              textColor: AppColors.headingColor, textSize: 18.0),
        );
      },
    );
  }
}
