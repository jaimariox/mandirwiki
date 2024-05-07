import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../../util/app_colors.dart';

showToastMsg(String msg, {Color color = Colors.red}) => Fluttertoast.showToast(
    gravity: ToastGravity.BOTTOM,
    msg: msg,
    backgroundColor: AppColors.kPrimaryColor,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT,
    timeInSecForIosWeb: 2);

void showCustomBottomSheet(BuildContext context, Widget widget) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: Container(
          height: Get.height*0.8,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: AssetImage('assets/images/container.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: widget

            // Platinum()
            ),
      );
    },
  );
}





Widget shareButton({bool isWhite = false}) => GestureDetector(
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
          color: Color(0xffD9D9D9),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.white,width: 1)),
      child: Center(
        child: SvgPicture.asset('assets/images/share.svg')),
    ),
  ),
);

