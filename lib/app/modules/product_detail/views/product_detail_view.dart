import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/product_detail_controller.dart';

class ProductDetailView extends GetView<ProductDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProductDetailView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Hero(
            tag: "anim${Get.arguments}",
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  image:
                      DecorationImage(image: AssetImage("images/shoes_1.png"))),
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                "Nike Sport Shoes - Man",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(
              left: 10.0,
              right: 10.0,
            ),
            child: Text(
              "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing",
              maxLines: 3,
            ),
          ),
          Spacer(),
          SizedBox(
            width: double.infinity,
            height: 50.0,
            child: ElevatedButton(
              child: Text("Add to Cart"),
              onPressed: () => null,
            ),
          )
        ],
      ),
    );
  }
}
