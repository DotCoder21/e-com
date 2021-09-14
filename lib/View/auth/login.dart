import 'package:firstproject/View/auth/signUp.dart';
import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customButton.dart';
import 'package:firstproject/widgets/customContainer.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:firstproject/widgets/customTextfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.1,
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(8.0),
                height: Get.height * 0.6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: AppColors.borderColor,
                        //blurRadius: 15.0,
                        offset: Offset(0.0, 0.75))
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
                    Row(
                      children: [
                        customText(
                          'Welcome,',
                          textSize: 30,
                          fontW: FontWeight.bold,
                          textColor: AppColors.headingColor,
                        ),
                        Spacer(),
                        InkWell(
                          onTap: ()
                          {
                            Get.to(()=>SignUp(),);
                          },
                          child: customText(
                            'SignUp',
                            textSize: 18.0,
                            textColor: AppColors.greenColor,
                          ),
                        )
                      ],
                    ),
                    customText('Sign In to Continue',
                        textColor: AppColors.textColor, textSize: 14.0),
                    SizedBox(
                      height: Get.height * 0.1,
                    ),
                    Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customText('Email'),
                          customTextfield('Enter your email'),
                          SizedBox(
                            height: Get.height * 0.03,
                          ),
                          customText('Password'),
                          customTextfield('Enter your password'),
                          SizedBox(
                            height: Get.height * 0.03,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: customText(
                              'Forgot Password?',
                              textColor: AppColors.headingColor,
                              textSize: 14.0,
                            ),
                          ),
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          customButton(
                            'SIGN IN',
                            () {

                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              customText(
                '-OR-',
                textColor: AppColors.headingColor,
                textSize: 18.0,
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              customContainer(context, 'assets/images/facebook.png', 'Sign In with Facebook'),
              customContainer(context, 'assets/images/google.png', 'Sign In With Google'),
            ],
          ),
        ),
      ),
    );
  }
}
