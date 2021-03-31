import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_demo_project/generated/locales.g.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      translationsKeys: AppTranslation.translations,
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
    ),
  );
}

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => Get.offNamed(Routes.LOGIN));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image.asset(
            'images/ecommerce.webp',
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}
