import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandirwiki/screen/splash_Screen.dart';
import 'package:mandirwiki/screen/ur_digital_budy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) {
  });

  runApp(ScreenUtilInit(
    designSize: Size(375, 812),
    builder: (context, _) => MandirWiki(),
  ));
}


class MandirWiki extends StatefulWidget {
  const MandirWiki({super.key});

  @override
  State<MandirWiki> createState() => _MandirWikiState();
}

class _MandirWikiState extends State<MandirWiki> {


  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:URDigitalBuddy()
      //SplashScreen(),
    );
  }
}
