import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandirwiki/screen/phone_number.dart';
import 'package:mandirwiki/screen/resnt_and_locker.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'my_wishlist.dart';

class MyLocker extends StatelessWidget {
  const MyLocker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 10,),
                backButton(),
                SizedBox(width:10,),
                CustomText(
                  text: 'My Locker',
                  fontSize: 20.sp,
                  fontWeight:
                  FontWeight.bold, // You can specify the font weight
                ),

              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: whiteContainer(Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      CustomText(
                        text: 'Locker No. 67',
                        fontSize: 18.sp,
                      ),
                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Date : 03/05/2024',
                            fontSize: 15.sp,

                          ),
                          CustomText(
                            text: 'Slot : 15:00 - 19:00',
                            fontSize: 15.sp,
                          ),

                        ],
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){
                          Get.to(MyWishlist());
                        },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(width: 1,color: Colors.black)
                            ),
                            child: QrImageView(
                              data: 'This QR code has an embedded image as well',
                              version: QrVersions.auto,
                              size: 120,
                              gapless: false,
                              embeddedImageStyle: QrEmbeddedImageStyle(
                                size: Size(80, 80),
                              ),
                            ),
                          )
                      ),
                      SizedBox(height: 10,),
                      CustomText(
                        text: 'Scan the QR Code by Locker Volunteer',
                        fontSize: 15.sp,
                      ),

                    ],
                  ),
                ),
              )),
            ),














          ],
        ),
      ),
    );
  }
}
