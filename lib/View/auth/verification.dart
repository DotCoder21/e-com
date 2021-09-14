import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customButton.dart';
import 'package:firstproject/widgets/customCodeTextField.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';
import '../explore/homePage.dart';

class VerificationScreen extends StatelessWidget {
  final _pinPutController = TextEditingController();
  final _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: AppColors.borderColor),
      borderRadius: BorderRadius.circular(15.0),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: GestureDetector(
                  onTap: ()
                  {
                    Get.back();
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
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
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
                height: Get.height * 0.57,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: AppColors.borderColor,
                        offset: Offset(0.0, 0.75))
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                  color: AppColors.whiteColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    customText(
                      'Verification',
                      textSize: 30,
                      textColor: AppColors.headingColor,
                      fontW: FontWeight.bold
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    customText(
                        ' A 6- Digit PIN has been sent to your gmail \n \n  address, enter it below to continue'),
                    SizedBox(
                      height: Get.height * 0.08,
                    ),
                    Container(
                      margin: const EdgeInsets.all(20.0),
                      padding: const EdgeInsets.all(20.0),
                      child: PinPut(
                        fieldsCount: 5,
                        onSubmit: (String pin) => _showSnackBar(pin, context),
                        focusNode: _pinPutFocusNode,
                        controller: _pinPutController,
                        submittedFieldDecoration: _pinPutDecoration.copyWith(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        selectedFieldDecoration: _pinPutDecoration,
                        followingFieldDecoration: _pinPutDecoration.copyWith(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: AppColors.borderColor,
                          ),
                        ),
                      ),
                    ),
                    customButton('CONTINUE', () {
                      Get.to(
                        () => HomePage(),
                      );
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _showSnackBar(String pin, BuildContext context) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 3),
      content: Container(
        height: 80.0,
        child: Center(
          child: Text(
            'Pin Submitted. Value: $pin',
            style: const TextStyle(fontSize: 25.0),
          ),
        ),
      ),
      backgroundColor: AppColors.borderColor,
    );
    Scaffold.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
