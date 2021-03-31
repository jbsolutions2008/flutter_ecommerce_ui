import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo_project/app/modules/cart/bindings/cart_binding.dart';
import 'package:getx_demo_project/app/modules/cart/views/cart_view.dart';
import 'package:getx_demo_project/app/modules/counter/bindings/counter_binding.dart';
import 'package:getx_demo_project/app/modules/counter/views/counter_view.dart';
import 'package:getx_demo_project/app/modules/home/bindings/home_binding.dart';
import 'package:getx_demo_project/app/modules/home/views/home_view.dart';
import 'package:getx_demo_project/app/modules/offer/bindings/offer_binding.dart';
import 'package:getx_demo_project/app/modules/offer/views/offer_view.dart';
import 'package:getx_demo_project/app/modules/setting/bindings/setting_binding.dart';
import 'package:getx_demo_project/app/modules/setting/views/setting_view.dart';
import 'package:getx_demo_project/app/routes/app_pages.dart';

class DashboardController extends GetxController {
  final currentIndex = 0.obs;

  static DashboardController get to => Get.find();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}


  final pages = <String>[
    Routes.HOME,
    Routes.COUNTER,
    Routes.CART,
    Routes.SETTING
  ];

  void changePage(int index) {
    currentIndex.value = index;
    Get.toNamed(pages[index], id: 1);
  }

  Route onGenerateRoute(RouteSettings settings) {
    if (settings.name == Routes.HOME)
      return GetPageRoute(
        settings: settings,
        page: () => HomeView(),
        binding: HomeBinding(),
      );

    if (settings.name == Routes.COUNTER)
      return GetPageRoute(
        settings: settings,
        page: () => OfferView(),
        binding: OfferBinding(),
      );

    if (settings.name == Routes.CART)
      return GetPageRoute(
        settings: settings,
        page: () => CartView(),
        binding: CartBinding(),
      );

    if (settings.name == Routes.SETTING)
      return GetPageRoute(
        settings: settings,
        page: () => SettingView(),
        binding: SettingBinding(),
      );

    return null;
  }
}
