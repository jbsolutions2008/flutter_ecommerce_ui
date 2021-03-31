import 'package:get/get.dart';
import 'package:getx_demo_project/app/modules/cart/controllers/cart_controller.dart';

class HomeController extends GetxController {
  final currentIndex = 0.obs;
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

  void onTapBottomNavigationItem(int index) {
    currentIndex.value = index;
  }
}
