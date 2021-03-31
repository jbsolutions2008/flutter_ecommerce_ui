import 'package:get/get.dart';

import '../controllers/offer_controller.dart';

class OfferBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferController>(
      () => OfferController(),
    );
  }
}
