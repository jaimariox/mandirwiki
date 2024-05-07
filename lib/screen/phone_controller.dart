import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../util/app_colors.dart';

class PhoneController extends GetxController {
  RxBool isLoading = true.obs;

  void showLoading() {
    loadingDialogBox(context: null);
  }
}

Future loadingDialogBox({required context, required}) => showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 2 - 80),
          child: Dialog(
            child: SizedBox(
              height: 80,
              width: 80,
              child: Center(
                child:
                    CircularProgressIndicator(color: AppColors.kPrimaryColor),
              ),
            ),
          ),
        );
      },
    );
