
import 'package:firstproject/View/auth/verification.dart';
import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customButton.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:firstproject/widgets/customTextfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: ()
                    {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 20.0,
                      color: AppColors.headingColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(8.0),
                height: Get.height * 0.62,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: AppColors.borderColor,
                        offset: Offset(0.0, 0.75)
                    )
                  ],
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    customText(
                      'Sign Up',
                      textSize: 30,
                      textColor: AppColors.headingColor,
                      fontW: FontWeight.bold,
                    ),
                    SizedBox(
                      height: Get.height * 0.05,
                    ),
                    Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customText('Name'),
                          customTextfield('Enter your name'),
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          customText('Email'),
                          customTextfield('Enter your email'),
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          customText('Password'),
                          customTextfield('Enter your password'),
                          SizedBox(
                            height: Get.height * 0.05,
                          ),
                          customButton('SIGN UP', () {
                            Get.to(
                              () => VerificationScreen(),
                            );
                          }),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Center(
                child: RichText(text: TextSpan(children: [
                  TextSpan(text: 'Already have an account?',style: TextStyle(color: AppColors.headingColor,fontSize: 15.0,),),
                  TextSpan(text: ' SIGNIN',style: TextStyle(color: AppColors.greenColor,fontSize: 15.0,),),
                ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
