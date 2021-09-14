import 'package:firstproject/View/account/mapView.dart';
import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewOrderStepper extends StatefulWidget {
  @override
  _ViewOrderStepperState createState() => _ViewOrderStepperState();
}

class _ViewOrderStepperState extends State<ViewOrderStepper> {
  int selectedIndex = 0;

  // List<Step> steps =[];
  int currentStep = 0;
  bool complete = false;

  next() {
    currentStep + 1 != 5
        ? goTo(currentStep + 1)
        : setState(() => complete = true);
  }

  cancel() {
    if (currentStep > 0) {
      goTo(currentStep - 1);
    }
  }

  goTo(int step) {
    setState(() {
      currentStep = step;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    views = [
//      buildPaymentView(),
//      buildPaymentView(),
//      buildPaymentView(),
//    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: InkWell(
          onTap: () => Get.to(
            () => MapView(),
          ),
          child: Theme(
            data: ThemeData(
              accentColor: AppColors.greenColor,
              colorScheme: ColorScheme.light(primary: AppColors.greenColor),
            ),
            child: Stepper(
              onStepTapped: (step) => goTo(step),
              type: StepperType.vertical,
              steps: [
                Step(
                  isActive: true,
                  title: customText(
                    'Order Signed',
                    textColor: AppColors.headingColor,
                    textSize: 16.0,
                    fontW: FontWeight.w600,
                  ),
                  subtitle: customText('Lagos state, Nigeria',
                      textColor: AppColors.headingColor, textSize: 12.0),
                  state: StepState.disabled,
                  content: Container(),
                ),
                Step(
                  title: customText(
                    'Order Processed',
                    textColor: AppColors.headingColor,
                    textSize: 16.0,
                    fontW: FontWeight.w600,
                  ),
                  subtitle: customText('Lagos state, Nigeria',
                      textColor: AppColors.headingColor, textSize: 12.0),
                  content: Container(),
                  isActive: true,
                ),
                Step(
                  title: customText(
                    'Shipped',
                    textColor: AppColors.headingColor,
                    textSize: 16.0,
                    fontW: FontWeight.w600,
                  ),
                  subtitle: customText('Lagos state, Nigeria',
                      textColor: AppColors.headingColor, textSize: 12.0),
                  content: Container(),
                  isActive: true,
                ),
                Step(
                  title: customText(
                    'Out for Delivery',
                    textColor: AppColors.headingColor,
                    textSize: 16.0,
                    fontW: FontWeight.w600,
                  ),
                  subtitle: customText('Edo state, Nigeria',
                      textColor: AppColors.headingColor, textSize: 12.0),
                  content: Container(),
                  isActive: true,
                ),
                Step(
                  title: customText(
                    'Delivered',
                    textColor: AppColors.headingColor,
                    textSize: 16.0,
                    fontW: FontWeight.w600,
                  ),
                  subtitle: customText('Edo state, Nigeria',
                      textColor: AppColors.headingColor, textSize: 12.0),
                  content: Container(),
                  isActive: true,
                )
              ],
              currentStep: currentStep,
              onStepCancel: cancel,
              onStepContinue: next,
            ),
          ),
        ),
      ),
    );
  }
//
//  buildPaymentView() {
//    return Column(
//      crossAxisAlignment: CrossAxisAlignment.start,
//      children: [
//        Padding(
//          padding: EdgeInsets.symmetric(
//            horizontal: 10.0,
//            vertical: 15.0,
//          ),
//          child: customText(
//            'Name on card',
//            textColor: AppColors.headingColor,
//          ),
//        ),
//        Padding(
//          padding: EdgeInsets.symmetric(
//            horizontal: 10.0,
//            vertical: 10.0,
//          ),
//          child: customTextfield(
//            'David Spade',
//          ),
//        ),
//        Padding(
//            padding: EdgeInsets.symmetric(
//              horizontal: 10.0,
//              vertical: 10.0,
//            ),
//            child:
//            customText('Card Number', textColor: AppColors.headingColor)),
//        Padding(
//          padding: EdgeInsets.symmetric(
//            horizontal: 10.0,
//            vertical: 10.0,
//          ),
//          child: TextField(
//            decoration: InputDecoration(
//              hintText: '2344 2344 2312 2345',
//              suffixIcon: Icon(
//                Icons.circle,
//                color: AppColors.rightSlidableColor,
//              ),
//            ),
//          ),
//        ),
//        Container(
//          height: Get.height * 0.2,
//          width: Get.height,
//          child: Row(
//            mainAxisAlignment: MainAxisAlignment.spaceAround,
//            children: [
//              Expanded(
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  children: [
//                    Padding(
//                      padding: EdgeInsets.symmetric(
//                          horizontal: 15.0, vertical: 10.0),
//                      child: customText('Expiry Date', textSize: 14.0),
//                    ),
//                    Padding(
//                      padding: EdgeInsets.symmetric(horizontal: 15.0),
//                      child: customTextfield(
//                        'kpk',
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//              Expanded(
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  children: [
//                    Padding(
//                      padding: EdgeInsets.symmetric(
//                          horizontal: 15.0, vertical: 10.0),
//                      child: customText('CVV', textSize: 14.0),
//                    ),
//                    Padding(
//                      padding: EdgeInsets.symmetric(horizontal: 15.0),
//                      child: customTextfield(
//                        'pakistan',
//                      ),
//                    ),
//                  ],
//                ),
//              )
//            ],
//          ),
//        ),
//        Container(
//          height: Get.height * 0.1,
//          child: Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: [
//              Container(
//                height: 30.0,
//                width: 30.0,
//                decoration: BoxDecoration(
//                  //borderRadius: BorderRadius.circular(80.0),
//                  shape: BoxShape.circle,
//                  color: Color(0xff06bbfb),
//                ),
//                child: Checkbox(
//                  tristate: true,
//                  value: true,
//                  onChanged: (newValue) {},
//                  activeColor: Color(0xff06bbfb),
//                ),
//              ),
//              customText(
//                'Save this Card Details',
//                textColor: AppColors.headingColor,
//                textSize: 12.0,
//              )
//            ],
//          ),
//        ),
//      ],
//    );
//  }
//
//  List<Widget> views = [];
}
