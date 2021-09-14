import 'package:firstproject/View/account/payments/cards.dart';
import 'package:firstproject/View/account/shippingAddress.dart';
import 'package:firstproject/View/account/trackOrder.dart';
import 'package:firstproject/View/account/wishList.dart';
import 'package:firstproject/models/profileModel.dart';
import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: Get.height * 0.3,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.0,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: 120 ,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/profile.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.02,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: Get.height * 0.1,
                          ),
                          customText('David Spade',
                              textColor: AppColors.headingColor,
                              textSize: 26.0,
                              fontW: FontWeight.w600),
                          customText(
                            'david@gmail.com',
                            textColor: AppColors.headingColor,
                            textSize: 14.0,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: Get.height * 0.7,
                width: double.infinity,
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        height: Get.height * 0.05,
                        width: Get.width * 0.1,
                        color: AppColors.containerColor.withOpacity(0.09),
                        child: Icon(Icons.edit_outlined),
                      ),
                      title: customText('Edit Profile',
                          textColor: AppColors.headingColor, textSize: 18.0),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.headingColor,
                        size: 13.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        Get.to(()=>ShippingAddress());
                      },
                      child: ListTile(
                        leading: Container(
                          height: Get.height * 0.05,
                          width: Get.width * 0.1,
                          color: AppColors.containerColor.withOpacity(0.09),
                          child: Icon(Icons.location_on_outlined),
                        ),
                        title: customText('Shipping Address',
                            textColor: AppColors.headingColor, textSize: 18.0),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.headingColor,
                          size: 13.0,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        Get.to(()=>WishListScreen());
                      },
                      child: ListTile(
                        leading: Container(
                          height: Get.height * 0.05,
                          width: Get.width * 0.1,
                          color: AppColors.containerColor.withOpacity(0.09),
                          child: Icon(Icons.favorite_border),
                        ),
                        title: Row(
                          children: [
                            customText('Wishlist',
                                textColor: AppColors.headingColor,
                                textSize: 18.0),
                            SizedBox(
                              width: Get.width * 0.02,
                            ),
                            Container(
                              width: Get.width * 0.2,
                              height: Get.height * 0.04,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: RaisedButton(
                                onPressed: () {},
                                color: AppColors.rightSlidableColor,
                                child: customText(
                                  'New',
                                  textColor: AppColors.whiteColor,
                                ),
                              ),
                            )
                          ],
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.headingColor,
                          size: 13.0,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Container(
                        height: Get.height * 0.05,
                        width: Get.width * 0.1,
                        color: AppColors.containerColor.withOpacity(0.09),
                        child: Icon(Icons.access_time),
                      ),
                      title: customText('Order History',
                          textColor: AppColors.headingColor, textSize: 18.0),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.headingColor,
                        size: 13.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(
                          () => TrackOrderScreen(),
                        );
                      },
                      child: ListTile(
                        leading: Container(
                          height: Get.height * 0.05,
                          width: Get.width * 0.1,
                          color: AppColors.containerColor.withOpacity(0.09),
                          child: Icon(Icons.card_travel),
                        ),
                        title: customText('Track Order',
                            textColor: AppColors.headingColor, textSize: 18.0),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.headingColor,
                          size: 13.0,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: GestureDetector(
                        onTap: ()
                        {
                          Get.to(()=>CardsScreen());
                        },
                        child: Container(
                          height: Get.height * 0.05,
                          width: Get.width * 0.1,
                          color: AppColors.containerColor.withOpacity(0.09),
                          child: Icon(Icons.credit_card),
                        ),
                      ),
                      title: customText('Cards',
                          textColor: AppColors.headingColor, textSize: 18.0),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.headingColor,
                        size: 13.0,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                        height: Get.height * 0.05,
                        width: Get.width * 0.1,
                        color: AppColors.containerColor.withOpacity(0.09),
                        child: Icon(Icons.logout_outlined),
                      ),
                      title: customText('Log Out',
                          textColor: AppColors.headingColor, textSize: 18.0),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.headingColor,
                        size: 13.0,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
