import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/offer_controller.dart';

class OfferView extends GetView<OfferController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Offer',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
