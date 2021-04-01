import 'package:get/get.dart';
import 'package:getx_demo_project/app/modules/cart/bindings/cart_binding.dart';
import 'package:getx_demo_project/app/modules/cart/views/cart_view.dart';
import 'package:getx_demo_project/app/modules/checkout/bindings/checkout_binding.dart';
import 'package:getx_demo_project/app/modules/checkout/views/checkout_view.dart';
import 'package:getx_demo_project/app/modules/counter/bindings/counter_binding.dart';
import 'package:getx_demo_project/app/modules/counter/views/counter_view.dart';
import 'package:getx_demo_project/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:getx_demo_project/app/modules/dashboard/views/dashboard_view.dart';
import 'package:getx_demo_project/app/modules/forgotpassword/bindings/forgotpassword_binding.dart';
import 'package:getx_demo_project/app/modules/forgotpassword/views/forgotpassword_view.dart';
import 'package:getx_demo_project/app/modules/home/bindings/home_binding.dart';
import 'package:getx_demo_project/app/modules/home/views/home_view.dart';
import 'package:getx_demo_project/app/modules/login/bindings/login_binding.dart';
import 'package:getx_demo_project/app/modules/login/views/login_view.dart';
import 'package:getx_demo_project/app/modules/offer/bindings/offer_binding.dart';
import 'package:getx_demo_project/app/modules/offer/views/offer_view.dart';
import 'package:getx_demo_project/app/modules/product_detail/bindings/product_detail_binding.dart';
import 'package:getx_demo_project/app/modules/product_detail/views/product_detail_view.dart';
import 'package:getx_demo_project/app/modules/setting/bindings/setting_binding.dart';
import 'package:getx_demo_project/app/modules/setting/views/setting_view.dart';
import 'package:getx_demo_project/app/modules/signup/bindings/signup_binding.dart';
import 'package:getx_demo_project/app/modules/signup/views/signup_view.dart';

import '../../main.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.FORGOTPASSWORD,
      page: () => ForgotpasswordView(),
      binding: ForgotpasswordBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_DETAIL,
      page: () => ProductDetailView(),
      binding: ProductDetailBinding(),
    ),
    GetPage(
      name: _Paths.COUNTER,
      page: () => CounterView(),
      binding: CounterBinding(),
    ),
    GetPage(
      name: _Paths.OFFER,
      page: () => OfferView(),
      binding: OfferBinding(),
    ),
    GetPage(
      name: _Paths.CHECKOUT,
      page: () => CheckoutView(),
      binding: CheckoutBinding(),
    ),
  ];
}
