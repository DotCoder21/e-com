import 'package:firstproject/View/cart/cart.dart';
import 'package:firstproject/models/bestSellingModel.dart';
import 'package:firstproject/models/recommendedModel.dart';

import 'writeReview.dart';
import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customButtonRow.dart';
import 'package:firstproject/widgets/customSliverContainer.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreCategoriesItemDetails extends StatefulWidget {
  final BestSellingModel? bestSellingModel;
  final String? image;
  final String? title;

  const ExploreCategoriesItemDetails({Key? key, this.image, this.title,this.bestSellingModel}) : super(key: key);



  @override
  _ExploreCategoriesItemDetailsState createState() =>
      _ExploreCategoriesItemDetailsState();
}

class _ExploreCategoriesItemDetailsState
    extends State<ExploreCategoriesItemDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Flexible(
              flex: 10,
              child: CustomScrollView(
                physics: BouncingScrollPhysics(),
                slivers: <Widget>[
                  SliverAppBar(
                      expandedHeight: Get.height * 0.5,
                      leading: GestureDetector(
                        onTap: ()
                        {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.headingColor,
                        ),
                      ),
                      flexibleSpace:  FlexibleSpaceBar(
                        background: Hero(
                          tag: 'dash',
                          child: Image(
                            image: AssetImage(widget.image!),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      actions: <Widget>[
                        Container(
                          height: Get.height * 0.07,
                          width: Get.width * 0.12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: AppColors.whiteColor),
                          child: Icon(
                            Icons.star_border,
                            color: AppColors.headingColor,
                          ),
                        ),
                        SizedBox(
                          width: Get.width * 0.02,
                        )
                      ]),
                  _buildBody(),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: customButtonRow('\$1100', 'ADD',()
                {
                  print('hello');
                  setState(() {
                    cartItemList.add(widget.bestSellingModel!);
                  });
                  Get.snackbar('Cart Message', 'Item added to cart successfully');
                }),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: Get.height * 0.01,
          ),
          Center(
            child: customText(
              widget.title!,
              textColor: AppColors.headingColor,
              textSize: 26.0,
              fontW: FontWeight.bold
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              customSliverClassContainer('Size', 'XL'),
              customSliverClassContainer('Colour', 'blackColor'),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: customText(
              'Details',
              textColor: AppColors.headingColor,
              textSize: 18.0,
              fontW: FontWeight.bold
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: customText(
              'Nike Dri-FIT is a polyester fabric designed to help you \n\n keep dry so you can more comfortably work harder, longer',
              textColor: AppColors.headingColor,
              textSize: 14.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: customText(
              'Reviews',
              textColor: AppColors.headingColor,
              textSize: 18.0,
              fontW: FontWeight.bold
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: GestureDetector(
              onTap: () => Get.to(
                () =>WriteReviewScreen(),
              ),
              child: customText(
                'Write your',
                textColor: AppColors.greenColor,
                textSize: 14.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: _buildReviewsList(),
          ),
        ],
      ),
    );
  }

  _buildReviewsList() {
    return Container(
      height: Get.height*0.3,
      child: ListView.builder(
        shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (ctx, i) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/man.png'),
            ),
            title: customText('Samuel Smith\n', textColor: AppColors.headingColor,
            fontW: FontWeight.bold),
            subtitle: customText('Here will be the review of the app user',
                textColor: AppColors.headingColor),
            trailing: Icon(Icons.star, color: AppColors.reviewColor, size: 20),
          );
        },
      ),
    );
  }
}
