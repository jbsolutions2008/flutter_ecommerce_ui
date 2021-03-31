import 'package:get/get.dart';

import '../controllers/counter_controller.dart';

class CounterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CounterController>(
      () => CounterController(),
    );
  }
}
