import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandirwiki/screen/my_locker.dart';
import 'package:mandirwiki/screen/phone_number.dart';
import 'package:mandirwiki/screen/terms_conditions.dart';
import 'package:mandirwiki/screen/widget/reuseable.dart';
import '../util/app_colors.dart';
import 'otp_screen.dart';

class RentAndLocker extends StatefulWidget {
  const RentAndLocker({super.key});

  @override
  State<RentAndLocker> createState() => _RentAndLockerState();
}

class _RentAndLockerState extends State<RentAndLocker> {

  bool value = true;
  bool value2 = false;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  backButton(),
                  CustomText(
                    text: 'Rent a Locker',
                    fontSize: 20.sp,
                    fontWeight:
                        FontWeight.bold, // You can specify the font weight
                  ),
                  Container(
                    height: 20.h,
                    width: 90.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: CustomText(
                        text: 'Locker',
                        color: Colors.white,
                        fontSize: 12.sp,
                      ),
                    ),
                  )
                ],
              ),



              Visibility(
                visible: value2,
                child: Column(
                  children: [
                    SizedBox(height: 10.h,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: whiteContainer(Container(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: CustomText(
                                text: 'Select Locker & Date ',
                                fontSize: 18.sp,
                                fontWeight: FontWeight
                                    .bold, // You can specify the font weight
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            textField(
                                label: 'Search Nearby Locker',
                                controller: TextEditingController(),
                                inputType: TextInputType.numberWithOptions(),
                                validate: (val) {}),
                            textField(
                                label: 'Select Date',
                                controller: TextEditingController(),
                                inputType: TextInputType.numberWithOptions(),
                                validate: (val) {}),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      )),
                    ),
                    SizedBox(height: 10.h,),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(
                        text: 'Available Slots',
                        fontSize: 18.sp,
                        fontWeight:
                        FontWeight.bold, // You can specify the font weight
                      ),
                    ),
                    SizedBox(height: 10.h,),

                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30.h,
                            width: 90.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black,
                            ),
                            child: Center(
                              child: CustomText(
                                text: '15:00 - 19:00',
                                color: Colors.white,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30.h,
                            width: 90.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff080E1E).withOpacity(0.6),
                            ),
                            child: Center(
                              child: CustomText(
                                text: '15:00 - 19:00',
                                color: Colors.white,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30.h,
                            width: 90.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff080E1E).withOpacity(0.6),
                            ),
                            child: Center(
                              child: CustomText(
                                text: '15:00 - 19:00',
                                color: Colors.white,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30.h,
                            width: 90.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff080E1E).withOpacity(0.6),
                            ),
                            child: Center(
                              child: CustomText(
                                text: '15:00 - 19:00',
                                color: Colors.white,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30.h,
                            width: 90.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff080E1E).withOpacity(0.6),
                            ),
                            child: Center(
                              child: CustomText(
                                text: '15:00 - 19:00',
                                color: Colors.white,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30.h,
                            width: 90.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff080E1E).withOpacity(0.6),
                            ),
                            child: Center(
                              child: CustomText(
                                text: '15:00 - 19:00',
                                color: Colors.white,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 10.h,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: whiteContainer(Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: CustomText(
                                  text: 'Total Payable Amount',
                                  fontSize: 18.sp,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                    text: '4 Hours ',
                                    fontSize: 15.sp,
                                  ),
                                  CustomText(
                                    text: 'Rs.80',
                                    fontSize: 15.sp,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              button(
                                text: 'Proceed to Pay',
                                onTap: () {
                                  showCustomBottomSheet(context ,Terms_Conditions());
                                },
                              ),
                            ],
                          ),
                        ),
                      )),
                    ),

                  ],
                ),
              ),

















              Visibility(
                visible: value,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),


                    Center(
                        child: Image.asset(
                          'assets/images/lock.png',
                          height: 200.h,
                        )),
                    SizedBox(
                      height: 40.h,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomText(
                      text: 'Store Your Items with',
                      fontSize: 15.sp,
                      fontWeight:
                      FontWeight.normal, // You can specify the font weight
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: 'Smart Lockers ',
                          fontSize: 18.sp,
                          fontWeight:
                          FontWeight.bold, // You can specify the font weight
                        ),
                        CustomText(
                          text: 'on the go',
                          fontSize: 18.sp,
                          fontWeight:
                          FontWeight.normal, // You can specify the font weight
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    button(
                      text: 'Next',
                      onTap: () {
                        value = false;
                        value2 = true;
                        setState(() {

                        });
                        Get.to(RentAndLocker());
                      },
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomText(
                      text: 'Need Help ? ',
                      fontSize: 13.sp,
                      fontWeight:
                      FontWeight.normal, // You can specify the font weight
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

Widget backButton({bool isWhite = false}) => GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: isWhite ? Colors.white : Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: AppColors.KBorderColor)),
          child: Center(
            child: Icon(Icons.arrow_back,
                color: isWhite ? Colors.black : Colors.black),
          ),
        ),
      ),
    );

Widget whiteContainer(Widget widget) {
  return Material(
    borderRadius: BorderRadius.circular(10),
    elevation: 6,
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: widget,
    ),
  );
}
