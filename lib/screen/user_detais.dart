import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandirwiki/screen/phone_number.dart';
import 'package:mandirwiki/screen/resnt_and_locker.dart';
import 'package:mandirwiki/screen/widget/reuseable.dart';
import 'bottom_navigation.dart';
import 'otp_screen.dart';

class UserDetails extends StatelessWidget {
  UserDetails({super.key});

  GlobalKey<FormState> _formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Center(
                    child: Image.asset(
                  'assets/images/logo.png',
                  height: 100,
                )),
                SizedBox(
                  height: 40.h,
                ),
                CustomText(
                  text: 'New User, Profile Details',
                  fontSize: 18.sp,
                  fontWeight:
                      FontWeight.bold, // You can specify the font weight
                ),
                SizedBox(
                  height: 16.h,
                ),
                textField(
                  label: 'First Name',
                  controller: TextEditingController(),
                  inputType:  TextInputType.text,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your first name';
                    }
                    // Add email validation logic here if needed
                    return null;
                  },
                ),
                textField(
                    label: 'Last Name',
                    controller: TextEditingController(),
                    inputType:  TextInputType.text,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your last name';
                    }
                    // Add email validation logic here if needed
                    return null;
                  },
                ),
                textField(
                  label: 'E mail',
                  controller: TextEditingController(),
                  inputType:  TextInputType.emailAddress,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email address';
                    }
                    // Add email validation logic here if needed
                    return null;
                  },
                ),
                textField(
                  label: 'Address',
                  controller: TextEditingController(),
                  inputType:  TextInputType.text,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your address';
                    }
                    // Add email validation logic here if needed
                    return null;
                  },
                ),
                SizedBox(
                  height: 50.h,
                ),
                button(
                    text: 'Submit',
                    onTap: () {
                      if (_formkey.currentState!.validate()) {
                       // Get.to(RentAndLocker());
                        Get.to(BottomNavigation());
                      } else {
                        showToastMsg("fill all the details");
                      }
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
