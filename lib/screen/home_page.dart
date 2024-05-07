import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mandirwiki/screen/phone_number.dart';
import 'package:mandirwiki/screen/widget/custom_image.dart';
import 'package:mandirwiki/util/app_colors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    FocusNode _focusNode = FocusNode();
    bool value = false;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [

                Row(
                  children: [
                    Image.asset('assets/images/profile_pic.png',height: 55,),
                    SizedBox(width: 5,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: 'good evening',fontSize: 14,),
                        CustomText(text: 'Guest',fontSize: 14,fontWeight: FontWeight.bold,),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        CustomText(text: 'Sign in',fontSize: 14,underline: true,),
                        Material(
                          borderRadius: BorderRadius.circular(8),
                          elevation: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)
                            ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomText(text: 'English',fontSize: 14,fontWeight: FontWeight.bold,),
                              )),
                        ),
                      ],
                    ),
                    SizedBox(width: 5,),

                  ],
                ),





                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    //   height: 64,
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (val) {
                        if (val == null || val.isEmpty || val.length != 10) {
                          return "Enter a valid 10 digit mobile number";
                        } else {
                          value = true;
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      maxLength: 10,
                      focusNode: _focusNode,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        border: InputBorder.none, // Remove the underline
                        prefixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Image.asset(
                                'assets/images/seacch.png',
                                height: 20,
                              ),
                            ),
                          ],
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image.asset(
                            'assets/images/fillter.png',
                            height: 5,
                          ),
                        ),
                        hintText: 'Discover a Temple or City',
                        counterText: '',
                        alignLabelWithHint: true, // Center align the hint text
                      ),
                    )

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
        ),
      ),
    );
  }
}
