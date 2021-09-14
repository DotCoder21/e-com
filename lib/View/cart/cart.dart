import 'package:firstproject/View/checkOut/checkout.dart';
import 'package:firstproject/models/bestSellingModel.dart';
import 'package:firstproject/models/cartItemModel.dart';
import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customButtonRow.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

List<BestSellingModel> cartItemList = [];
// ignore: must_be_immutable
class CartScreen extends StatefulWidget {


  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:  AppBar(
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
          title: customText('Cart', textColor: AppColors.headingColor),
        ),
        body: Column(
          children: [
            Flexible(
              flex: 10,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: Get.height*0.75,
                      width: Get.width,
                      child: buildCartList(context),
                    ),
                    Divider(
                      color: AppColors.textColor,
                      height: 1.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          customText(
                            'Sub Total',
                            textSize: 16.0,
                            textColor: AppColors.headingColor,
                          ),
                          Spacer(),
                          customText(
                            '\$3950',
                            textSize: 16.0,
                            textColor: AppColors.headingColor,
                            fontW: FontWeight.bold
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height*0.1,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          customText(
                            'Tax',
                            textSize: 16.0,
                            textColor: AppColors.headingColor,
                          ),
                          Spacer(),
                          customText(
                            '\$50',
                            textSize: 16.0,
                            textColor: AppColors.headingColor,
                            fontW: FontWeight.bold
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Divider(
                      height: 1.0,
                      color: AppColors.textColor,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: Get.height*0.1,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: AppColors.borderColor,
                            width: 1.0,
                          )
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter Voucher Code',
                              suffixText: 'Apply',
                              suffixStyle: TextStyle(
                                color: AppColors.headingColor,
                                fontSize: 15.0
                              )
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height*0.02,
                    ),

                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: customButtonRow('Total','CheckOut',(){
                  Get.to(()=>CheckoutScreen(),);
                }),
              ),
            ),
          ],
        ),
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
          child: Slidable(
            actionPane: SlidableDrawerActionPane(),
            actionExtentRatio: 0.2,
            secondaryActions: [
              IconSlideAction(
                icon: Icons.delete_outline,
                foregroundColor: AppColors.whiteColor,
                color: AppColors.rightSlidableColor,
                onTap: ()
                {
                  cartItemList.removeAt(i);
                  setState(() {

                  });
                },
              ),
            ],
            actions: [
              IconSlideAction(
                icon: Icons.star,
                foregroundColor: AppColors.whiteColor,
                color: AppColors.leftSlidableColor,
              ),
            ],
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
                        child: customText(cartItemList[i].title,
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
                              child: Icon(
                                Icons.remove,
                                color: AppColors.headingColor,
                                size: 10.0,
                              ),
                            ),
                            Center(
                              child: customText(
                                '2',
                                textColor: AppColors.headingColor,
                                textSize: 14.0,
                              )
                            ),
                            Icon(
                              Icons.add,
                              color: AppColors.headingColor,
                              size: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        );
      },
    );
  }
}
