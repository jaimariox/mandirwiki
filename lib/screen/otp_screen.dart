import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mandirwiki/screen/phone_number.dart';
import 'package:mandirwiki/screen/user_detais.dart';

import '../util/custom_text_style.dart';
import '../util/theme_helper.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});
  bool value = false;
  FocusNode _focusNode=FocusNode();


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40.h,),

              Center(child: Image.asset('assets/images/logo.png',height: 100,)),
              SizedBox(height: 40.h,),
              CustomText(
                text: 'OTP Verification',
                fontSize: 18.sp,
                fontWeight: FontWeight.bold, // You can specify the font weight
              ),
              SizedBox(height: 4.h,),



              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: CustomText(
                  text: 'Enter OTP sent to 887*******48',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal, // You can specify the font weight
                ),
              ),
              SizedBox(height: 16.h,),
              SizedBox(
                //   height: 64,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (val){
                      if( val == null || val.isEmpty || val.length!= 4 ){
                        return "Enter a valid 4 digit OTP ";
                      }else{
                        value = true;

                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    maxLength: 4,
                    focusNode: _focusNode,
                    decoration:  InputDecoration(
                      label: Text(
                        'Otp Code',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 0),

                      counterText: '',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.black)),
                      focusedErrorBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.black)),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.black)),
                      focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.black)),
                    ),
                  ),
                ),
              ),

              buildRowDuration(),
              SizedBox(height: 8.h,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/infoicon.svg',height: 20,),
                    Column(children: [

                      Align(alignment: Alignment.bottomLeft,
                          child: CustomText(text: 'By continuing to Verify, I agree to Mandir Wiki',fontSize: 12,)),
                      Row(children: [
                        CustomText(text: 'Terms & Conditions ',fontSize: 12,fontWeight: FontWeight.bold,underline:true),
                        CustomText(text:'and the  ',fontSize: 12,),
                        CustomText(text:'Privacy Policy',fontSize: 12,fontWeight: FontWeight.bold,underline:true),
                      ],),
                    ],),
                  ],
                ),
              ),

              SizedBox(height: 50.h,),

              button(text: 'Verify', onTap: (){
                if (value == true){
                  Get.to(UserDetails());

                }

              },),

            ],
          ),
        ),
      ),
    );

  }
}














Widget textField(
    {required String label,
      required controller,
      required validate,
      inputType = TextInputType.text,
      maxLength = null}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 4),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validate,
        controller: controller,
        // onChanged: (val){controller.text=val.trim();},
        keyboardType: inputType,
        maxLength: maxLength,
        cursorColor: Colors.grey.shade400,
        style: GoogleFonts.poppins().copyWith(color: Colors.black, fontSize: 14),
        decoration: InputDecoration(
          //isDense: false,
          // isCollapsed: false,
          contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          label: Text(
            label,
            style: GoogleFonts.poppins().copyWith(
                fontSize: 12,
                color: Colors.grey.shade600,
                fontWeight: FontWeight.w500),
          ),
          counterText: '',
          border: InputBorder.none,
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.red)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.red)),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.black)),
          focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.black)),
        ),
      ),
    );






Widget buildRowDuration() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 30.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.h),
          child: Text(
            "Expires in 04:50 Minutes".tr,
            style: CustomTextStyles.bodySmallBluegray400,
          ),
        ),
        Text(
          "Resend OTP".tr,
          style: theme.textTheme.labelMedium,
        )
      ],
    ),
  );
}
