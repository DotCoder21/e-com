import 'package:firstproject/View/account/wishList.dart';
import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShippingAddress extends StatefulWidget {
  @override
  _ShippingAddressState createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  int _value=1;
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
            'Shipping Address',
            textColor: AppColors.headingColor,
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: Get.height * 0.1,
            ),
            GestureDetector(
              onTap: () {
                Get.to(
                  () => WishListScreen(),
                );
              },
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (ctx, i) {
                  return Column(
                    children: [
                      ListTile(
                        title: customText('Home Address\n',
                            textColor: AppColors.headingColor,
                            textSize: 18.0,
                            fontW: FontWeight.bold),
                        subtitle: customText(
                            'Order will be delivered between 3 - 5 business days',
                            textColor: AppColors.headingColor,
                            textSize: 14.0),
                        trailing: Radio(
                          value: 1,
                          groupValue: _value,
                          activeColor: AppColors.greenColor,
                          onChanged: (value) {
                            setState(() {
                              value=_value;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.1,
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
