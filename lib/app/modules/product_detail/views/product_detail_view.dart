import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_demo_project/app/modules/cart/controllers/cart_controller.dart';
import 'package:getx_demo_project/app/modules/cart/model/product.dart';

import '../controllers/product_detail_controller.dart';

class ProductDetailView extends GetView<ProductDetailController> {
  var cartItem = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3, 4, 5];
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Hero(
            tag: "anim${Get.arguments}",
            child: CarouselSlider(
              options: CarouselOptions(onPageChanged: (index, _) {
                controller.changeImage(index);
              }),
              items: list
                  .map(
                    (item) => Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                          image: DecorationImage(
                              image: AssetImage("images/shoes_1.png"))),
                    ),
                  )
                  .toList(),
            ),
          ),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: list.map((url) {
                int index = list.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: controller.current.value == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
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
            child: SizedBox(
              width: double.infinity,
              child: Text(
                "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing",
                maxLines: 3,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(
              left: 10.0,
              right: 10.0,
            ),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                "Available Size",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(
              left: 10.0,
              right: 10.0,
            ),
            child: SizedBox(
              width: double.infinity,
              height: 30.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 50.0,
                    child: Center(
                      child: Text(
                        "UK6",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    width: 50.0,
                    child: Center(
                      child: Text(
                        "UK7",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    width: 50.0,
                    child: Center(
                      child: Text(
                        "UK8",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    width: 50.0,
                    child: Center(
                      child: Text(
                        "UK9",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.only(
              left: 10.0,
              right: 10.0,
            ),
            child: SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Text(
                    "Price",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    "₹1000",
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          SizedBox(
            width: double.infinity,
            height: 50.0,
            child: ElevatedButton(
              child: Text("Add to Cart"),
              onPressed: () {
                {
                  var product = Product(
                      id: Random().nextInt(1000),
                      productName: "Nike",
                      productImage: "asa",
                      productDescription: "shoes",
                      price: 20,
                      qty: 1);
                  cartItem.addToCart(product);

                  Get.back();
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
