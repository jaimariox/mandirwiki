import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mandirwiki/screen/phone_number.dart';
import 'package:mandirwiki/screen/resnt_and_locker.dart';
import 'package:mandirwiki/screen/widget/reuseable.dart';
import 'package:mandirwiki/util/app_colors.dart';

class MandirDetails extends StatefulWidget {
  MandirDetails({super.key});

  @override
  State<MandirDetails> createState() => _MandirDetailsState();
}
RxBool showMandirDetail = false.obs;


class _MandirDetailsState extends State<MandirDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            topContainer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: CustomText(
                          text: 'Vaishno Devi Temple',
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Material(
                      elevation: 1,
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Center(
                          child: CustomText(
                            text: 'Time to Visit',
                            fontSize: 15.sp,
                            color: Color(0xff080E1E),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 2),
                    child: Material(
                      elevation: 1,
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Center(
                          child: CustomText(
                            text: 'How to Reach',
                            fontSize: 15.sp,
                            color: Color(0xff080E1E),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
              child: Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(
                              text: 'Shri Mata Vaishno Devi Temple',
                              fontSize: 17.sp,
                              color: AppColors.darkBlue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          GestureDetector(
                            onTap: () {
                              showMandirDetail.value = !showMandirDetail.value;
                              setState(() {});
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                showMandirDetail.value
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                color: Color(0xff345AFA),
                              ),
                            ),
                          ) // Change the color of the icon
                        ],
                      ),
                      if (showMandirDetail.value)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(children: [

                            CustomText(
                              textAlign: TextAlign.start,
                              text: 'Vaishno Devi Temple, also known as the Shri Mata Vaishno Devi Temple and Vaishno Devi Bhavan, is a Hindu mandir (temple) located in Katra, Jammu and Kashmir, dedicated to Vaishno Devi, a manifestation of Durga. It is located on the Trikuta mountain at 5,000 feet elevation. The Shakti tradition considers it to be a Shakti Pitha. The temple is governed by the Shri Mata Vaishno Devi Shrine Board (SMVDSB) and has been chaired by the Government of Jammu and Kashmir since August 1986.',
                              fontSize: 14.sp,
                              color: AppColors.darkBlue,
                            ),
                            SizedBox(height: 18,),
                            Row(
                              children: [
                                CustomText(
                                  text: 'Temple Timings',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.lightBlueK,
                                  // color: Color(0xff345AFA),
                                ),
                                SizedBox(width: 3,),
                                SvgPicture.asset('assets/images/timer.svg',height: 20,),
                                Spacer(),
                                CustomText(
                                  text: 'Deity',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.lightBlueK,
                                  // color: Color(0xff345AFA),
                                ),
                                SizedBox(width: 3,),
                                SvgPicture.asset('assets/images/mandir.svg',height: 20,),



                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    CustomText(text: '06:00 AM to 01:00 PM'),
                                    CustomText(text: '06:00 AM to 01:00 PM')
                                  ],
                                ),
                                Spacer(),
                                CustomText(text: 'Vaishno Devi')
                              ],
                            ),
                            SizedBox(height: 18,),
                            Row(
                              children: [
                                CustomText(
                                  text: 'Location',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.lightBlueK,
                                  // color: Color(0xff345AFA),
                                ),
                                SizedBox(width: 3,),
                                SvgPicture.asset('assets/images/location.svg',height: 20,),
                                Spacer(),
                                CustomText(
                                  text: 'Best Time to Visit',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.lightBlueK,
                                  // color: Color(0xff345AFA),
                                ),
                                SizedBox(width: 3,),
                                SvgPicture.asset('assets/images/visit.svg',height: 20,),



                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    CustomText(text: 'Jammu & Kashmir'),
                                  ],
                                ),
                                Spacer(),
                                CustomText(text: 'March - July')
                              ],
                            ),
                            SizedBox(height: 18,),

                            Row(
                              children: [
                                CustomText(
                                  text: 'Nearest Airport',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.lightBlueK,
                                  // color: Color(0xff345AFA),
                                ),
                                SizedBox(width: 3,),
                                SvgPicture.asset('assets/images/tickrt.svg',height: 20,),
                                Spacer(),
                                CustomText(
                                  text: 'Priority Darshan',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.lightBlueK,
                                  // color: Color(0xff345AFA),
                                ),
                                SizedBox(width: 3,),
                                SvgPicture.asset('assets/images/darsan.svg',height: 20,),



                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    CustomText(text: 'Jammu Airport (IXJ)'),
                                  ],
                                ),
                                Spacer(),
                                CustomText(text: 'Available')
                              ],
                            ),
                            SizedBox(height: 18,),

                            Row(
                              children: [
                                CustomText(
                                  text: 'Nearest Railway Station',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.lightBlueK,
                                  // color: Color(0xff345AFA),
                                ),
                                SizedBox(width: 3,),
                                SvgPicture.asset('assets/images/rail.svg',height: 20,),



                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(text: 'Shri Mata Vaishno Devi Katra (SVDK)'),
                                CustomText(text: 'Jammu Tawi (JAT)'),
                              ],
                            ),
                            SizedBox(height: 18,),

                            Row(
                              children: [
                                CustomText(
                                  text: 'Nearest Parking',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.lightBlueK,
                                  // color: Color(0xff345AFA),
                                ),
                                SizedBox(width: 3,),
                                SvgPicture.asset('assets/images/parking.svg',height: 20,),



                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(text: 'Katra Railway Station Rs.50 Approx'),
                              ],
                            ),

                          ]),
                        ),
                      SizedBox(height: 10,)
                    ],
                  ),
                ),
              ),
            ),
            expendableTile('Time to Visit',Container(height: 100,color: Colors.black,)),
            expendableTile('How to Reach',Container(height: 100,color: Colors.black,)),
            expendableTile('Yatra Parchi / Registration',Container(height: 100,color: Colors.black,)),
            expendableTile('Trek Distance',Container(height: 100,color: Colors.black,)),
            expendableTile('Footfall',Container(height: 100,color: Colors.black,)),
            expendableTile('Avg. Temperature (C)',Container(height: 100,color: Colors.black,)),
            expendableTile('Where to Stay',Container(height: 100,color: Colors.black,)),
            expendableTile('Temple Timings',Container(height: 100,color: Colors.black,)),
            expendableTile('Dress Code',Container(height: 100,color: Colors.black,)),
            expendableTile('Gate Information',Container(height: 100,color: Colors.black,)),
            expendableTile('Facilities',Container(height: 100,color: Colors.black,)),
            expendableTile('Special Services',Container(height: 100,color: Colors.black,)),

          ],
        ),
      ),
    );
  }
}

Widget topContainer() {
  return Stack(
    children: [
      Image.asset(
        'assets/images/veshnodevi.png',
      ),
      Positioned(left: 10, top: 10, child: SafeArea(child: backButton())),
      Positioned(right: 10, top: 10, child: SafeArea(child: shareButton())),
      Positioned(
          left: 10,
          top: 30,
          bottom: 0,
          child: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white)),
      Positioned(
          right: 10,
          top: 30,
          bottom: 0,
          child: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white)),
      Positioned(
        bottom: 0,
        child: Container(
          width: Get.width,
          height: 15,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
        ),
      ),
    ],
  );
}





Widget expendableTile(String txt,Widget widget){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
    child: Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    text: txt,
                    fontSize: 17.sp,
                    color: AppColors.darkBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    showMandirDetail.value = !showMandirDetail.value;
                  //  setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      showMandirDetail.value
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: Color(0xff345AFA),
                    ),
                  ),
                ) // Change the color of the icon
              ],
            ),
            if (showMandirDetail.value)
              widget,
            SizedBox(height: 10,)
          ],
        ),
      ),
    ),
  );
}
