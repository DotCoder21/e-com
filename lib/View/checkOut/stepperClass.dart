import 'package:firstproject/models/stepperModel.dart';
import 'package:firstproject/utils/appColors.dart';
import 'package:firstproject/widgets/customButtonRow.dart';
import 'package:firstproject/widgets/customText.dart';
import 'package:firstproject/widgets/customTextfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StepperClass extends StatefulWidget {
  @override
  _StepperClassState createState() => _StepperClassState();
}

class _StepperClassState extends State<StepperClass> {
  int selectedIndex =0;

  bool _value= false;
  // List<Step> steps =[];
  int currentStep = 0;
  bool complete = false;

  next() {
    currentStep + 1 != 3
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
    views = [
      buildPaymentView(),
      buildPaymentView(),
      buildPaymentView(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Theme(
            data: ThemeData(
              accentColor: AppColors.greenColor,
              colorScheme: ColorScheme.light(primary: AppColors.greenColor),
            ),
            child: Stepper(
              onStepTapped: (step) => goTo(step),
              type: StepperType.horizontal,
              steps: [
                Step(
                    isActive: currentStep>=0,
                    title: customText(''),
                    state: StepState.disabled,
                    content: Container(
                      height: Get.height,
                      width: Get.width,
                      child: Column(
                        children: [
                          Flexible(
                            flex: 10,
                            child: Container(
                              height: Get.height - 120,
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: 3,
                                itemBuilder: (ctx, i) {
                                  var radioColor=selectedIndex==i ? AppColors.greenColor : AppColors.borderColor;
                                  return Column(
                                    children: [
                                      ListTile(
                                        title: customText('Standard Delivery\n',
                                            textColor: AppColors.headingColor,
                                            textSize: 18.0,
                                            fontW: FontWeight.bold),
                                        subtitle: customText(
                                            'Order will be delivered between 3 - 5 business days',
                                            textColor:  AppColors.headingColor,
                                            textSize: 14.0),
                                        trailing: Radio(
                                          activeColor: radioColor,
                                          value: i,
                                          groupValue: selectedIndex,

                                          onChanged: (val)
                                          {
                                            setState(() {
                                          selectedIndex=i;
                                            // ignore: unnecessary_statements
                                           // value==value;


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
                          ),
                          Flexible(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: RaisedButton(
                                onPressed: () {
                                  setState(() {
                                    currentStep+=1;
                                  });
                                },
                                child: customText('NEXT',
                                    textColor: AppColors.whiteColor),
                                color: AppColors.greenColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                Step(
                  isActive: currentStep>=1,
                  title: customText(''),
                  content: Container(
                    height: Get.height,
                    child: Column(
                      children: [
                        Flexible(
                          flex: 20,
                          child: SingleChildScrollView(
                            child: Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: Get.height * 0.1,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 30.0,
                                          width: 30.0,
                                          decoration: BoxDecoration(
                                            //borderRadius: BorderRadius.circular(80.0),
                                            shape: BoxShape.circle,
                                            color: Color(0xff06bbfb),
                                          ),
                                          child: Checkbox(
                                            tristate: true,
                                            value: true,
                                            onChanged: (newValue) {},
                                            activeColor: Color(0xff06bbfb),
                                          ),
                                        ),
                                        customText(
                                          'Billing address is the same as delivery address',
                                          textColor: AppColors.headingColor,
                                          textSize: 12.0,
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
//                                    height: Get.height*0.5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15.0, vertical: 20.0),
                                          child: customText('Street 1',
                                              textSize: 14.0),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15.0),
                                          child: customTextfield(
                                            'here will be the text entered by user',
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15.0, vertical: 20.0),
                                          child: customText('Street 2',
                                              textSize: 14.0),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15.0),
                                          child: customTextfield(
                                            'here will be the text entered by user',
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15.0, vertical: 20),
                                          child: customText('Street 3',
                                              textSize: 14.0),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15.0),
                                          child: customTextfield(
                                            'here will be the text entered by user',
                                          ),
                                        ),
                                        Container(
                                          height: Get.height * 0.2,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 15.0,
                                                              vertical: 10.0),
                                                      child: customText('State',
                                                          textSize: 14.0),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 15.0),
                                                      child: customTextfield(
                                                        'kpk',
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 15.0,
                                                              vertical: 10.0),
                                                      child: customText('Country',
                                                          textSize: 14.0),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 15.0),
                                                      child: customTextfield(
                                                        'pakistan',
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child: customButtonRow('Back', 'NEXT',(){
                                setState(() {
                                  currentStep++;
                                });
                              })),
                        )
                      ],
                    ),
                  ),
                ),
                Step(
                  isActive: currentStep>=2,
                  title: customText(''),
                  content: Container(
                    height: Get.height,
                    child: Column(
                      children: [
                        Flexible(
                          flex: 10,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      RaisedButton(
                                          onPressed: () {
                                            setState(() {
                                              selectedIndex = 0;
                                            });
                                          },
                                          color: selectedIndex == 0
                                              ? AppColors.greenColor
                                              : AppColors.whiteColor,
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/paypal.png'),
                                            color: selectedIndex == 0
                                                ? AppColors.whiteColor
                                                : AppColors.textColor,
                                          )),
                                      RaisedButton(
                                        onPressed: () {
                                          setState(() {
                                            selectedIndex = 1;
                                          });
                                        },
                                        color: selectedIndex == 1
                                            ? AppColors.greenColor
                                            : AppColors.whiteColor,
                                        child: Icon(
                                          Icons.credit_card,
                                          color: selectedIndex == 1
                                              ? AppColors.whiteColor
                                              : AppColors.textColor,
                                        ),
                                      ),
                                      RaisedButton(
                                          onPressed: () {
                                            setState(() {
                                              selectedIndex = 2;
                                            });
                                          },
                                          color: selectedIndex == 2
                                              ? AppColors.greenColor
                                              : AppColors.whiteColor,
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/save card.png'),
                                            color: selectedIndex == 2
                                                ? AppColors.whiteColor
                                                : AppColors.textColor,
                                          )),
                                    ],
                                  ),
                                ),
                                views[selectedIndex],
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child: customButtonRow('Back', 'NEXT',()
                              {

                              })),
                        )
                      ],
                    ),
                  ),
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

  buildPaymentView() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 15.0,
            ),
            child: customText(
              'Name on card',
              textColor: AppColors.headingColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 10.0,
            ),
            child: customTextfield(
              'David Spade',
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child:
                  customText('Card Number', textColor: AppColors.headingColor)),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 10.0,
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: '2344 2344 2312 2345',
                  suffixIcon: Image(
                    image: AssetImage('assets/images/card_icon.png'),
                  )),
            ),
          ),
          Container(
            height: Get.height * 0.2,
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10.0),
                        child: customText('Expiry Date', textSize: 14.0),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: customTextfield(
                          'kpk',
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10.0),
                        child: customText('CVV', textSize: 14.0),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: customTextfield(
                          'pakistan',
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: Get.height * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(80.0),
                    shape: BoxShape.circle,
                    color: Color(0xff06bbfb),
                  ),
                  child: Checkbox(
                    tristate: true,
                    value: true,
                    onChanged: (newValue) {},
                    activeColor: Color(0xff06bbfb),
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.02,
                ),
                customText(
                  'Save this Card Details',
                  textColor: AppColors.headingColor,
                  textSize: 12.0,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> views = [];
}
