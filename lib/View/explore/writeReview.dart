import 'filter.dart';
import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:firstproject/widgets/customTextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class WriteReviewScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          elevation: 0,
          centerTitle: true,
          leading: Icon(
            Icons.keyboard_arrow_down,
            size: 15.0,
            color: AppColors.headingColor,
          ),
          title: customText('Write Review', textColor: AppColors.headingColor),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height * 0.2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: customText(
                'Nike Dri-FIT Long Sleeve',
                textColor: AppColors.headingColor,
                textSize: 26.0,
                fontW: FontWeight.bold
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Center(
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: customTextfield(
                'Tell us your experience',
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: RaisedButton(
                  color: AppColors.greenColor,
                  onPressed: () {
                    Get.to(
                      () => FilterScreen(),
                    );
                  },
                  child: customText('SEND', textColor: AppColors.whiteColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
