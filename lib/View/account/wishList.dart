import 'package:firstproject/View/search/searchScreen.dart';
import 'package:firstproject/models/bestSellingModel.dart';
import 'package:firstproject/models/cartItemModel.dart';
import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

class WishListScreen extends StatefulWidget {
  @override
  _WishListScreenState createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {

  int itemCount=0;
  List<CartItemModel> cartItemList = [
    CartItemModel('assets/images/watch.jpg', 'Tag heuer Wrist watch', '\$1100'),
    CartItemModel('assets/images/speaker.png', 'Beo play Speaker', '\$450'),
    CartItemModel('assets/images/watch.jpg', 'Tag heuer Wrist watch', '\$1100'),
    CartItemModel('assets/images/speaker.png', 'Beo play speaker', '\$450'),
  ];

  List<BestSellingModel> bestSellingList = [
    BestSellingModel('assets/images/speaker.png', 'Beo Play Speaker',
        'Bang and Olufson', '\$755',1),
    BestSellingModel(
        'assets/images/watch.jpg', 'Leather WristWatch', 'Tag Heuer', '\$450',2),
    BestSellingModel('assets/images/speaker.png', 'Beo Play Speaker',
        'Bang and Olufson', '\$755',1),
    BestSellingModel(
        'assets/images/watch.jpg', 'Leather WristWatch', 'Tag Heuer', '\$450',3),
    BestSellingModel('assets/images/speaker.png', 'Beo Play Speaker',
        'Bang and Olufson', '\$755',2),
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
          leading: Icon(
            Icons.arrow_back_ios,
            size: 15.0,
            color: AppColors.headingColor,
          ),
          title: customText(
            'Wishlist',
            textColor: AppColors.headingColor,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Get.height*0.72,
                width: Get.width,
                child: buildCartList(context),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
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

  buildCartList(BuildContext context) {
    return ListView.builder(
      itemCount: cartItemList.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (ctx, i) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 10.0,
          ),
          child: Container(
            height: Get.height * 0.15,
            width: double.infinity,
            child: Row(children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: Get.height*0.12,
                  width: Get.width*0.12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(
                        cartItemList[i].iconImage,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: Get.width*0.03,
              ),
              Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        bottom: 5.0,
                      ),
                      child: customText(cartItemList[i].text,
                          textColor: AppColors.headingColor, textSize: 16.0,fontW: FontWeight.w600),
                    ),
                    customText(
                      cartItemList[i].price,
                      textColor: AppColors.greenColor,
                      textSize: 16.0,
                    ),
                    SizedBox(
                      height: Get.height*0.02,
                    ),
                    Container(
                      padding: EdgeInsets.all(2.0),
                      width: Get.width*0.2,
                      decoration: BoxDecoration(
                        color: AppColors.borderColor,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Center(
                            child: GestureDetector(
                              onTap: ()
                              {
                                setState(() {
                                  itemCount--;
                                });
                              },
                              child: Icon(
                                Icons.remove,
                                color: AppColors.headingColor,
                                size: 10.0,
                              ),
                            ),
                          ),
                          Center(
                              child: customText(
                                '$itemCount',
                                textColor: AppColors.headingColor,
                                textSize: 14.0,
                              )
                          ),
                          GestureDetector(
                            onTap: ()
                            {
                              setState(() {
                                itemCount++;
                              });
                            },
                            child: Icon(
                              Icons.add,
                              color: AppColors.headingColor,
                              size: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        );
      },
    );
  }
}
