import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

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
