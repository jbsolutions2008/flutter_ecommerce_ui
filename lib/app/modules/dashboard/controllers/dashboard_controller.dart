import 'package:get/get.dart';

class DashboardController extends GetxController {
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
