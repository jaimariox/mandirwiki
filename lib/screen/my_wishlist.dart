import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mandirwiki/screen/phone_number.dart';
import 'package:mandirwiki/screen/resnt_and_locker.dart';
import 'package:mandirwiki/util/app_colors.dart';

import 'mandir_details.dart';

class MyWishlist extends StatelessWidget {
  const MyWishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                backButton(),
                SizedBox(
                  width: 8,
                ),
                CustomText(
                  text: 'Wishlist',
                  fontSize: 20.sp,
                  fontWeight:
                      FontWeight.bold, // You can specify the font weight
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  height: 20.h,
                  width: 90.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset('assets/images/Vector.svg'),
                        CustomText(
                          text: 'Make a Plan',
                          color: Colors.white,
                          fontSize: 12.sp,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
            GestureDetector(
              onTap: (){
                Get.to(MandirDetails());
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Material(
                  elevation: 1,

                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          child: Image.asset('assets/images/akshardham_mandir.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CustomText(
                                text: 'Swaminarayan Akshardham',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff080E1E).withOpacity(0.8),
                              ),
                              RatingBar.builder(
                                initialRating: 3,
                                itemSize: 12.w,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7.0),
                          child: CustomText(
                            textAlign: TextAlign.start,
                            text: 'A Huge Complex of Multimedia, Diormas, Temples  and art to teach about Hinduism',
                            fontSize: 12.sp,
                            color: Color(0xff080E1E).withOpacity(0.8),
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7.0),
                          child: Row(
                            children: [
                              CustomText(
                                text: 'Temple Timings',
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                               color: AppColors.lightBlueK,
                               // color: Color(0xff345AFA),
                              ),
                              SvgPicture.asset('assets/images/timer.svg',height: 20,),

                            ],
                          ),
                        ),
                        SizedBox(height: 20.h,),

                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
