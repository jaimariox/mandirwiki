import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mandirwiki/screen/phone_number.dart';
import 'package:mandirwiki/util/app_colors.dart';

import 'my_locker.dart';

class Terms_Conditions extends StatefulWidget {
  const Terms_Conditions({super.key});

  @override
  State<Terms_Conditions> createState() => _Terms_ConditionsState();
}

class _Terms_ConditionsState extends State<Terms_Conditions> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'Terms & Conditions',
          fontSize: 20.sp,
          color: AppColors.darkBlue,
          fontWeight: FontWeight.bold,
        ),
        tnc('Acceptance of Terms'),
        tnc2('Lorem ipsum dolor sit amet consectetur. Tellus congue et libero purus tincidunt. Aenean turpis vel cras elementum ante. '),
        tnc('Locker Usage'),
        tnc2('Lorem ipsum dolor sit amet consectetur. Tellus congue et libero purus tincidunt. Aenean turpis vel cras elementum ante. '),

        tnc('Items Allowed in Smart Lockers'),
        tnc2('Lorem ipsum dolor sit amet consectetur. Tellus congue et libero purus tincidunt. Aenean turpis vel cras elementum ante. '),

        tnc('Access Code'),
        tnc2('Lorem ipsum dolor sit amet consectetur. Tellus congue et libero purus tincidunt. Aenean turpis vel cras elementum ante. '),

        tnc('Rental Extension'),

        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(children: [
            SizedBox(
              height: 20,
              child: Checkbox(
                activeColor: AppColors.darkBlue,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value ?? false;
                  });
                },
              ),

            ),
            CustomText(
              text: 'I agree with the ',
              fontSize: 12.sp,
              color: AppColors.darkBlue,
            ),
            CustomText(
              text: 'Terms & Conditions',
              fontSize: 12.sp,
              color: AppColors.darkBlue,
              fontWeight: FontWeight.bold,
            ),
          ],),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(8),

                height: 54.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(width: 2,color: AppColors.darkBlue)
                ),
                child:  Center(
                  child: CustomText(
                    text: 'Cancel',
                    fontSize: 17.sp,
                    color: AppColors.darkBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  if(isChecked){
                    Get.to(MyLocker());
                  }
                },
                child: Container(
                  margin: EdgeInsets.all(8),
                  height: 54.h,
                  decoration: BoxDecoration(
                    color: Colors.black,
                      borderRadius: BorderRadius.circular(40),
                  ),
                  child:  Center(
                    child: CustomText(
                      text: 'Next',
                      fontSize: 17.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),


      ],
    );
  }
}



Widget tnc (String txt){
  return Row(
    children: [
      SvgPicture.asset('assets/images/arrow.svg'),
      SizedBox(width: 2,),
      CustomText(
        text: txt,
        fontSize: 17.sp,
        color: AppColors.darkBlue,
        fontWeight: FontWeight.w600,
      ),

    ],
  );
}
Widget tnc2 (String txt){
  return  Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0),
    child: CustomText(
      text: txt,
      fontSize: 14.sp,
      color: Color(0xff363636),
    ),
  );
}





