import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mandirwiki/screen/otp_screen.dart';
import 'package:mandirwiki/screen/phone_controller.dart';
import '../util/app_colors.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber();

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  FocusNode _focusNode=FocusNode();
  bool value = false;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40.h,),

              Center(child: Image.asset('assets/images/logo.png',height: 100,)),
              SizedBox(height: 40.h,),
              CustomText(
                text: 'My Mobile',
                fontSize: 18.sp,
                fontWeight: FontWeight.bold, // You can specify the font weight
              ),
              SizedBox(height: 4.h,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: CustomText(
                  text: 'Please enter your valid phone number. We will send you a 4-digit code to verify your account. ',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal,
                  color: AppColors.kPrimaryColor2,
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
                      if( val == null || val.isEmpty || val.length!= 10 ){
                        return "Enter a valid 10 digit mobile number";
                      }else{
                        value = true;

                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    maxLength: 10,
                    focusNode: _focusNode,
                    decoration:  InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                      prefixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Image.asset(
                              'assets/images/Flag_of_India.png',
                              height: 20,
                            ),
                          ),
                          Text('(+91)',style: TextStyle(color: Colors.black,fontFamily: 'Poppins',),),
                          Padding(
                            padding: const EdgeInsets.only(left:5,right: 10),
                            child: Container(color: Colors.black,width:1,height:20),
                          ),

                        ],),
                      hintText: '',
                      counterText: '',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.black)),
                      focusedErrorBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.black)),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.black)),
                      focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.black)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50.h,),

              button(text: 'Request for OTP', onTap: (){
                if(value== true){
                  loadingDialogBox(context: context);
                  Timer(const Duration(seconds: 3), () {
                    Get.offAll(OtpScreen());
                  });
                }
               // Get.to(OtpScreen());
              },),

            ],
          ),
        ),
      ),
    );
  }
}






Widget button({required String text, required onTap}) => Container(
  decoration: BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.circular(60),
  ),
  child: MaterialButton(
    onPressed: onTap,
    minWidth: Get.width * 0.87,
    height: 55,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(65)),
    color: Colors.black,
    child: Text(
      text,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.bold,
        fontSize: ScreenUtil().setSp(16),
        color: Colors.white,
      ),
    ),
  ),
);








class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign? textAlign;
  final FontWeight fontWeight;
  final Color color;
  final bool underline;

  const CustomText({
    required this.text,
    this.fontSize = 16.0,
    this.textAlign = TextAlign.center,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black,
    this.underline = false, // Default value is false
  });

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      decoration: underline ? TextDecoration.underline : TextDecoration.none,
    );

    return Text(
      text,
      textAlign: textAlign,
      style: textStyle,
    );
  }
}









