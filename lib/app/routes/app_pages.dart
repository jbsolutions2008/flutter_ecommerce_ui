import 'package:get/get.dart';

import 'package:getx_demo_project/app/modules/forgotpassword/bindings/forgotpassword_binding.dart';
import 'package:getx_demo_project/app/modules/forgotpassword/views/forgotpassword_view.dart';
import 'package:getx_demo_project/app/modules/home/bindings/home_binding.dart';
import 'package:getx_demo_project/app/modules/home/views/home_view.dart';
import 'package:getx_demo_project/app/modules/login/bindings/login_binding.dart';
import 'package:getx_demo_project/app/modules/login/views/login_view.dart';
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
  ];
}
