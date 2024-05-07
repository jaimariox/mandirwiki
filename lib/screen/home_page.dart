import 'dart:async';

import 'package:flutter_cool_card_swiper/data.dart';
import 'package:flutter_cool_card_swiper/widgets/cool_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mandirwiki/screen/mandir_details.dart';
import 'package:mandirwiki/screen/phone_number.dart';
import 'package:mandirwiki/screen/widget/custom_image.dart';
import 'package:mandirwiki/util/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  late Timer _timer;
  bool value = false;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 3), () {
      value=true;
      setState(() {

      });

    });
  }




  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Color(0xffF7F6F0),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),

            child: Column(
              children: [
                if(value ==false)
                  Shimmer.fromColors(
                    baseColor: Colors.grey.shade200,
                    highlightColor: Colors.grey.shade400,
                    period: const Duration(milliseconds: 1500),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/profile_pic.png',
                                height: 55,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: 'good evening',
                                    fontSize: 14,
                                  ),
                                  CustomText(
                                    text: 'Guest',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  CustomText(
                                    text: 'Sign in',
                                    fontSize: 14,
                                    underline: true,
                                  ),
                                  Material(
                                    borderRadius: BorderRadius.circular(8),
                                    elevation: 1,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: CustomText(
                                            text: 'English',
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.name,
                            inputFormatters: [
                              FilteringTextInputFormatter.singleLineFormatter
                            ],
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding: EdgeInsets.all(0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.white)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.white)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.white)),
                              prefixIcon: Icon(Icons.search),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/images/fillter.png',
                                ),
                              ),
                              hintText: 'Discover a Temple or City',
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                child: Container(
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Center(
                                    child: CustomText(
                                      text: 'Popular',
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
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Center(
                                      child: CustomText(
                                        text: 'Most Viewed',
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
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Center(
                                      child: CustomText(
                                        text: 'Recommended',
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
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            height: 370,
                            width: Get.width,
                            child: CoolSwiper(
                              children: List.generate(
                                  Data.colors.length,
                                      (index) => Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: ClipPath(
                                        clipper: MyClipper(),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 400,
                                              height: 300,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                              ),
                                              child: CustomImage(
                                                image: "",
                                                placeholder:
                                                'assets/replace_image/rammandir.png',
                                                fit: BoxFit.fill,
                                                height: 150,
                                                width: Get.width * 0.9,
                                                radius: 10,
                                              ),
                                            ),
                                            Positioned(
                                                right: 40,
                                                top: 30,
                                                child: Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(100),
                                                      color: Colors.white
                                                          .withOpacity(0.4)),
                                                  child: Padding(
                                                    padding:
                                                    const EdgeInsets.all(8.0),
                                                    child: SvgPicture.asset(
                                                        'assets/images/heart.svg'),
                                                  ),
                                                )),
                                            Positioned(
                                              width: 220,
                                              bottom: 20,
                                              left: 35,
                                              child: GestureDetector(
                                                onTap: () {
                                                  Get.to(MandirDetails());
                                                },
                                                child: Material(
                                                  elevation: 1,
                                                  borderRadius:
                                                  BorderRadius.circular(10),
                                                  child: Container(
                                                    width: 230,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(10),
                                                        color: Colors.white),
                                                    child: Padding(
                                                      padding:
                                                      const EdgeInsets.all(8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                        children: [
                                                          Column(
                                                            children: [
                                                              CustomText(
                                                                text:
                                                                'Shree Ram Mandir',
                                                                fontWeight:
                                                                FontWeight.bold,
                                                                fontSize: 15,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  SvgPicture.asset(
                                                                      'assets/images/mark.svg'),
                                                                  CustomText(
                                                                    text:
                                                                    'Ayodhya, U.P',
                                                                    color: Color(
                                                                        0xff64646E),
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                    fontSize: 11,
                                                                  ),
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                          Container(
                                                            height: 40,
                                                            width: 40,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                    100),
                                                                color: Colors.black),
                                                            child: Padding(
                                                              padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                              child: Icon(
                                                                Icons.arrow_forward,
                                                                color: Colors.white,
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ))),
                            ),
                          ),
                        ),
                        Material(
                          elevation: 1,
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomText(
                                  text: '     Our Services',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                            children: [
                                              Material(
                                                borderRadius: BorderRadius.circular(6),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(6),
                                                        color: Color(0xffF5F5F5)),
                                                    width: 100,
                                                    height: 80,
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.all(8.0),
                                                          child: Container(
                                                            height: 40,
                                                            width: 40,
                                                            decoration: BoxDecoration(
                                                              shape: BoxShape.circle,
                                                              image: DecorationImage(
                                                                image: AssetImage(
                                                                    'assets/images/Ellipse 6.png'),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        CustomText(text: 'Scan QR')
                                                      ],
                                                    )),
                                                elevation: 2,
                                              ),
                                              Material(
                                                borderRadius: BorderRadius.circular(6),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(6),
                                                        color: Color(0xffF5F5F5)),
                                                    width: 100,
                                                    height: 80,
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.all(8.0),
                                                          child: Container(
                                                            height: 40,
                                                            width: 40,
                                                            decoration: BoxDecoration(
                                                              shape: BoxShape.circle,
                                                              image: DecorationImage(
                                                                image: AssetImage(
                                                                    'assets/images/Ellipse 6.png'),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        CustomText(text: 'Scan QR')
                                                      ],
                                                    )),
                                                elevation: 2,
                                              ),
                                              Material(
                                                borderRadius: BorderRadius.circular(6),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(6),
                                                        color: Color(0xffF5F5F5)),
                                                    width: 100,
                                                    height: 80,
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.all(8.0),
                                                          child: Container(
                                                            height: 40,
                                                            width: 40,
                                                            decoration: BoxDecoration(
                                                              shape: BoxShape.circle,
                                                              image: DecorationImage(
                                                                image: AssetImage(
                                                                    'assets/images/Ellipse 6.png'),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        CustomText(text: 'Scan QR')
                                                      ],
                                                    )),
                                                elevation: 2,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                            children: [
                                              Material(
                                                borderRadius: BorderRadius.circular(6),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(6),
                                                        color: Color(0xffF5F5F5)),
                                                    width: 100,
                                                    height: 80,
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.all(8.0),
                                                          child: Container(
                                                            height: 40,
                                                            width: 40,
                                                            decoration: BoxDecoration(
                                                              shape: BoxShape.circle,
                                                              image: DecorationImage(
                                                                image: AssetImage(
                                                                    'assets/images/Ellipse 6.png'),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        CustomText(text: 'Scan QR')
                                                      ],
                                                    )),
                                                elevation: 2,
                                              ),
                                              Material(
                                                borderRadius: BorderRadius.circular(6),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(6),
                                                        color: Color(0xffF5F5F5)),
                                                    width: 100,
                                                    height: 80,
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.all(8.0),
                                                          child: Container(
                                                            height: 40,
                                                            width: 40,
                                                            decoration: BoxDecoration(
                                                              shape: BoxShape.circle,
                                                              image: DecorationImage(
                                                                image: AssetImage(
                                                                    'assets/images/Ellipse 6.png'),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        CustomText(text: 'Scan QR')
                                                      ],
                                                    )),
                                                elevation: 2,
                                              ),
                                              Material(
                                                borderRadius: BorderRadius.circular(6),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(6),
                                                        color: Color(0xffF5F5F5)),
                                                    width: 100,
                                                    height: 80,
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.all(8.0),
                                                          child: Container(
                                                            height: 40,
                                                            width: 40,
                                                            decoration: BoxDecoration(
                                                              shape: BoxShape.circle,
                                                              image: DecorationImage(
                                                                image: AssetImage(
                                                                    'assets/images/Ellipse 6.png'),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        CustomText(text: 'Scan QR')
                                                      ],
                                                    )),
                                                elevation: 2,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 150,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Container(
                                  height: 150, // Fixed height for each item
                                  child: CustomImage(
                                    image: "",
                                    placeholder:
                                    'assets/replace_image/mandireventbanner.png',
                                    fit: BoxFit.fill,
                                    height: 150,
                                    width: Get.width * 0.9,
                                    radius: 10,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Material(
                          elevation: 1,
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomText(
                                  text: '   Other Services',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                Container(
                                  height: 83,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 10,
                                    // Replace itemCount with the actual number of items
                                    itemBuilder: (context, index) {
                                      return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 82,
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: 62,
                                                  width: 62,
                                                  decoration: BoxDecoration(
                                                      color: AppColors.darkBlue,
                                                      borderRadius:
                                                      BorderRadius.circular(300)),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(14.0),
                                                    child: SvgPicture.asset(
                                                        'assets/images/panditji.svg'),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ));
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Material(
                          elevation: 1,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 300,
                            padding: EdgeInsets.all(8),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: 'Important Information',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                Container(
                                  height: 245,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 10,
                                    // Replace itemCount with the actual number of items
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 240, // Fixed height for each item
                                          child: Stack(
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(30),
                                                child: CustomImage(
                                                  image: "",
                                                  // Replace with actual image path or URL
                                                  placeholder:
                                                  'assets/replace_image/mainpagecard.png',
                                                  fit: BoxFit.fill,
                                                  height: 240,
                                                  width: 160,
                                                  radius: 30,
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 0,
                                                child: Container(
                                                  height: 40,
                                                  width: 160,
                                                  color: Colors.white.withOpacity(0.4),
                                                  child: CustomText(
                                                    fontSize: 12,
                                                    text: 'Last Mile Connectivity',
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if(value ==true)
               Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children: [
                         Image.asset(
                           'assets/images/profile_pic.png',
                           height: 55,
                         ),
                         SizedBox(
                           width: 5,
                         ),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             CustomText(
                               text: 'good evening',
                               fontSize: 14,
                             ),
                             CustomText(
                               text: 'Guest',
                               fontSize: 14,
                               fontWeight: FontWeight.bold,
                             ),
                           ],
                         ),
                         Spacer(),
                         Column(
                           children: [
                             CustomText(
                               text: 'Sign in',
                               fontSize: 14,
                               underline: true,
                             ),
                             Material(
                               borderRadius: BorderRadius.circular(8),
                               elevation: 1,
                               child: Container(
                                   decoration: BoxDecoration(
                                       color: Colors.white,
                                       borderRadius: BorderRadius.circular(8)),
                                   child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: CustomText(
                                       text: 'English',
                                       fontSize: 14,
                                       fontWeight: FontWeight.bold,
                                     ),
                                   )),
                             ),
                           ],
                         ),
                         SizedBox(
                           width: 5,
                         ),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: TextFormField(
                       autovalidateMode: AutovalidateMode.onUserInteraction,
                       keyboardType: TextInputType.name,
                       inputFormatters: [
                         FilteringTextInputFormatter.singleLineFormatter
                       ],
                       decoration: InputDecoration(
                         fillColor: Colors.white,
                         filled: true,
                         contentPadding: EdgeInsets.all(0),
                         border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10),
                             borderSide: BorderSide(color: Colors.white)),
                         enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10),
                             borderSide: BorderSide(color: Colors.white)),
                         focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10),
                             borderSide: BorderSide(color: Colors.white)),
                         prefixIcon: Icon(Icons.search),
                         suffixIcon: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Image.asset(
                             'assets/images/fillter.png',
                           ),
                         ),
                         hintText: 'Discover a Temple or City',
                       ),
                     ),
                   ),
                   SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                     child: Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 4.0),
                           child: Container(
                             padding:
                             EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                             decoration: BoxDecoration(
                               color: Colors.black,
                               borderRadius: BorderRadius.circular(40),
                             ),
                             child: Center(
                               child: CustomText(
                                 text: 'Popular',
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
                               padding: EdgeInsets.symmetric(
                                   horizontal: 6, vertical: 4),
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(40),
                               ),
                               child: Center(
                                 child: CustomText(
                                   text: 'Most Viewed',
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
                               padding: EdgeInsets.symmetric(
                                   horizontal: 6, vertical: 4),
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(40),
                               ),
                               child: Center(
                                 child: CustomText(
                                   text: 'Recommended',
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
                     padding: const EdgeInsets.all(20),
                     child: Container(
                       height: 370,
                       width: Get.width,
                       child: CoolSwiper(
                         children: List.generate(
                             Data.colors.length,
                                 (index) => Padding(
                                 padding: const EdgeInsets.all(6.0),
                                 child: ClipPath(
                                   clipper: MyClipper(),
                                   child: Stack(
                                     children: [
                                       Container(
                                         width: 400,
                                         height: 300,
                                         decoration: BoxDecoration(
                                           borderRadius:
                                           BorderRadius.circular(10),
                                         ),
                                         child: CustomImage(
                                           image: "",
                                           placeholder:
                                           'assets/replace_image/rammandir.png',
                                           fit: BoxFit.fill,
                                           height: 150,
                                           width: Get.width * 0.9,
                                           radius: 10,
                                         ),
                                       ),
                                       Positioned(
                                           right: 40,
                                           top: 30,
                                           child: Container(
                                             height: 40,
                                             width: 40,
                                             decoration: BoxDecoration(
                                                 borderRadius:
                                                 BorderRadius.circular(100),
                                                 color: Colors.white
                                                     .withOpacity(0.4)),
                                             child: Padding(
                                               padding:
                                               const EdgeInsets.all(8.0),
                                               child: SvgPicture.asset(
                                                   'assets/images/heart.svg'),
                                             ),
                                           )),
                                       Positioned(
                                         width: 220,
                                         bottom: 20,
                                         left: 35,
                                         child: GestureDetector(
                                           onTap: () {
                                             Get.to(MandirDetails());
                                           },
                                           child: Material(
                                             elevation: 1,
                                             borderRadius:
                                             BorderRadius.circular(10),
                                             child: Container(
                                               width: 230,
                                               decoration: BoxDecoration(
                                                   borderRadius:
                                                   BorderRadius.circular(10),
                                                   color: Colors.white),
                                               child: Padding(
                                                 padding:
                                                 const EdgeInsets.all(8.0),
                                                 child: Row(
                                                   mainAxisAlignment:
                                                   MainAxisAlignment
                                                       .spaceAround,
                                                   children: [
                                                     Column(
                                                       children: [
                                                         CustomText(
                                                           text:
                                                           'Shree Ram Mandir',
                                                           fontWeight:
                                                           FontWeight.bold,
                                                           fontSize: 15,
                                                         ),
                                                         Row(
                                                           mainAxisAlignment:
                                                           MainAxisAlignment
                                                               .start,
                                                           children: [
                                                             SvgPicture.asset(
                                                                 'assets/images/mark.svg'),
                                                             CustomText(
                                                               text:
                                                               'Ayodhya, U.P',
                                                               color: Color(
                                                                   0xff64646E),
                                                               fontWeight:
                                                               FontWeight
                                                                   .bold,
                                                               fontSize: 11,
                                                             ),
                                                           ],
                                                         )
                                                       ],
                                                     ),
                                                     Container(
                                                       height: 40,
                                                       width: 40,
                                                       decoration: BoxDecoration(
                                                           borderRadius:
                                                           BorderRadius
                                                               .circular(
                                                               100),
                                                           color: Colors.black),
                                                       child: Padding(
                                                         padding:
                                                         const EdgeInsets
                                                             .all(8.0),
                                                         child: Icon(
                                                           Icons.arrow_forward,
                                                           color: Colors.white,
                                                         ),
                                                       ),
                                                     )
                                                   ],
                                                 ),
                                               ),
                                             ),
                                           ),
                                         ),
                                       )
                                     ],
                                   ),
                                 ))),
                       ),
                     ),
                   ),
                   Material(
                     elevation: 1,
                     borderRadius: BorderRadius.circular(15),
                     child: Container(
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(15),
                       ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           CustomText(
                             text: '     Our Services',
                             fontSize: 20,
                             fontWeight: FontWeight.bold,
                           ),
                           Container(
                               child: Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                                   children: [
                                     Row(
                                       mainAxisAlignment:
                                       MainAxisAlignment.spaceAround,
                                       children: [
                                         Material(
                                           borderRadius: BorderRadius.circular(6),
                                           child: Container(
                                               decoration: BoxDecoration(
                                                   borderRadius:
                                                   BorderRadius.circular(6),
                                                   color: Color(0xffF5F5F5)),
                                               width: 100,
                                               height: 80,
                                               child: Column(
                                                 children: [
                                                   Padding(
                                                     padding:
                                                     const EdgeInsets.all(8.0),
                                                     child: Container(
                                                       height: 40,
                                                       width: 40,
                                                       decoration: BoxDecoration(
                                                         shape: BoxShape.circle,
                                                         image: DecorationImage(
                                                           image: AssetImage(
                                                               'assets/images/Ellipse 6.png'),
                                                         ),
                                                       ),
                                                     ),
                                                   ),
                                                   CustomText(text: 'Scan QR')
                                                 ],
                                               )),
                                           elevation: 2,
                                         ),
                                         Material(
                                           borderRadius: BorderRadius.circular(6),
                                           child: Container(
                                               decoration: BoxDecoration(
                                                   borderRadius:
                                                   BorderRadius.circular(6),
                                                   color: Color(0xffF5F5F5)),
                                               width: 100,
                                               height: 80,
                                               child: Column(
                                                 children: [
                                                   Padding(
                                                     padding:
                                                     const EdgeInsets.all(8.0),
                                                     child: Container(
                                                       height: 40,
                                                       width: 40,
                                                       decoration: BoxDecoration(
                                                         shape: BoxShape.circle,
                                                         image: DecorationImage(
                                                           image: AssetImage(
                                                               'assets/images/Ellipse 6.png'),
                                                         ),
                                                       ),
                                                     ),
                                                   ),
                                                   CustomText(text: 'Scan QR')
                                                 ],
                                               )),
                                           elevation: 2,
                                         ),
                                         Material(
                                           borderRadius: BorderRadius.circular(6),
                                           child: Container(
                                               decoration: BoxDecoration(
                                                   borderRadius:
                                                   BorderRadius.circular(6),
                                                   color: Color(0xffF5F5F5)),
                                               width: 100,
                                               height: 80,
                                               child: Column(
                                                 children: [
                                                   Padding(
                                                     padding:
                                                     const EdgeInsets.all(8.0),
                                                     child: Container(
                                                       height: 40,
                                                       width: 40,
                                                       decoration: BoxDecoration(
                                                         shape: BoxShape.circle,
                                                         image: DecorationImage(
                                                           image: AssetImage(
                                                               'assets/images/Ellipse 6.png'),
                                                         ),
                                                       ),
                                                     ),
                                                   ),
                                                   CustomText(text: 'Scan QR')
                                                 ],
                                               )),
                                           elevation: 2,
                                         ),
                                       ],
                                     ),
                                     SizedBox(
                                       height: 6,
                                     ),
                                     Row(
                                       mainAxisAlignment:
                                       MainAxisAlignment.spaceAround,
                                       children: [
                                         Material(
                                           borderRadius: BorderRadius.circular(6),
                                           child: Container(
                                               decoration: BoxDecoration(
                                                   borderRadius:
                                                   BorderRadius.circular(6),
                                                   color: Color(0xffF5F5F5)),
                                               width: 100,
                                               height: 80,
                                               child: Column(
                                                 children: [
                                                   Padding(
                                                     padding:
                                                     const EdgeInsets.all(8.0),
                                                     child: Container(
                                                       height: 40,
                                                       width: 40,
                                                       decoration: BoxDecoration(
                                                         shape: BoxShape.circle,
                                                         image: DecorationImage(
                                                           image: AssetImage(
                                                               'assets/images/Ellipse 6.png'),
                                                         ),
                                                       ),
                                                     ),
                                                   ),
                                                   CustomText(text: 'Scan QR')
                                                 ],
                                               )),
                                           elevation: 2,
                                         ),
                                         Material(
                                           borderRadius: BorderRadius.circular(6),
                                           child: Container(
                                               decoration: BoxDecoration(
                                                   borderRadius:
                                                   BorderRadius.circular(6),
                                                   color: Color(0xffF5F5F5)),
                                               width: 100,
                                               height: 80,
                                               child: Column(
                                                 children: [
                                                   Padding(
                                                     padding:
                                                     const EdgeInsets.all(8.0),
                                                     child: Container(
                                                       height: 40,
                                                       width: 40,
                                                       decoration: BoxDecoration(
                                                         shape: BoxShape.circle,
                                                         image: DecorationImage(
                                                           image: AssetImage(
                                                               'assets/images/Ellipse 6.png'),
                                                         ),
                                                       ),
                                                     ),
                                                   ),
                                                   CustomText(text: 'Scan QR')
                                                 ],
                                               )),
                                           elevation: 2,
                                         ),
                                         Material(
                                           borderRadius: BorderRadius.circular(6),
                                           child: Container(
                                               decoration: BoxDecoration(
                                                   borderRadius:
                                                   BorderRadius.circular(6),
                                                   color: Color(0xffF5F5F5)),
                                               width: 100,
                                               height: 80,
                                               child: Column(
                                                 children: [
                                                   Padding(
                                                     padding:
                                                     const EdgeInsets.all(8.0),
                                                     child: Container(
                                                       height: 40,
                                                       width: 40,
                                                       decoration: BoxDecoration(
                                                         shape: BoxShape.circle,
                                                         image: DecorationImage(
                                                           image: AssetImage(
                                                               'assets/images/Ellipse 6.png'),
                                                         ),
                                                       ),
                                                     ),
                                                   ),
                                                   CustomText(text: 'Scan QR')
                                                 ],
                                               )),
                                           elevation: 2,
                                         ),
                                       ],
                                     ),
                                   ],
                                 ),
                               ))
                         ],
                       ),
                     ),
                   ),
                   Container(
                     height: 150,
                     child: ListView.builder(
                       scrollDirection: Axis.horizontal,
                       itemCount: 10,
                       itemBuilder: (context, index) {
                         return Padding(
                           padding: const EdgeInsets.all(6.0),
                           child: Container(
                             height: 150, // Fixed height for each item
                             child: CustomImage(
                               image: "",
                               placeholder:
                               'assets/replace_image/mandireventbanner.png',
                               fit: BoxFit.fill,
                               height: 150,
                               width: Get.width * 0.9,
                               radius: 10,
                             ),
                           ),
                         );
                       },
                     ),
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   Material(
                     elevation: 1,
                     borderRadius: BorderRadius.circular(15),
                     child: Container(
                       padding: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(15),
                       ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           CustomText(
                             text: '   Other Services',
                             fontSize: 20,
                             fontWeight: FontWeight.bold,
                           ),
                           Container(
                             height: 83,
                             child: ListView.builder(
                               scrollDirection: Axis.horizontal,
                               itemCount: 10,
                               // Replace itemCount with the actual number of items
                               itemBuilder: (context, index) {
                                 return Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Container(
                                       height: 82,
                                       child: Column(
                                         children: [
                                           Container(
                                             height: 62,
                                             width: 62,
                                             decoration: BoxDecoration(
                                                 color: AppColors.darkBlue,
                                                 borderRadius:
                                                 BorderRadius.circular(300)),
                                             child: Padding(
                                               padding: const EdgeInsets.all(14.0),
                                               child: SvgPicture.asset(
                                                   'assets/images/panditji.svg'),
                                             ),
                                           )
                                         ],
                                       ),
                                     ));
                               },
                             ),
                           )
                         ],
                       ),
                     ),
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   Material(
                     elevation: 1,
                     borderRadius: BorderRadius.circular(10),
                     child: Container(
                       height: 300,
                       padding: EdgeInsets.all(8),
                       width: double.infinity,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.white,
                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           CustomText(
                             text: 'Important Information',
                             fontSize: 20,
                             fontWeight: FontWeight.bold,
                           ),
                           Container(
                             height: 245,
                             child: ListView.builder(
                               scrollDirection: Axis.horizontal,
                               itemCount: 10,
                               // Replace itemCount with the actual number of items
                               itemBuilder: (context, index) {
                                 return Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Container(
                                     height: 240, // Fixed height for each item
                                     child: Stack(
                                       children: [
                                         ClipRRect(
                                           borderRadius: BorderRadius.circular(30),
                                           child: CustomImage(
                                             image: "",
                                             // Replace with actual image path or URL
                                             placeholder:
                                             'assets/replace_image/mainpagecard.png',
                                             fit: BoxFit.fill,
                                             height: 240,
                                             width: 160,
                                             radius: 30,
                                           ),
                                         ),
                                         Positioned(
                                           bottom: 0,
                                           child: Container(
                                             height: 40,
                                             width: 160,
                                             color: Colors.white.withOpacity(0.4),
                                             child: CustomText(
                                               fontSize: 12,
                                               text: 'Last Mile Connectivity',
                                               color: Colors.white,
                                               fontWeight: FontWeight.w600,
                                             ),
                                           ),
                                         ),
                                       ],
                                     ),
                                   ),
                                 );
                               },
                             ),
                           )
                         ],
                       ),
                     ),
                   ),
                 ],
               )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width * 0.1, 0);
    path.lineTo(size.width * 0.9, 0);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
