import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo_project/app/modules/cart/model/product.dart';
import 'package:getx_demo_project/app/routes/app_pages.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.count > 0
          ? ListView.builder(
              itemCount: controller.count,
              itemBuilder: (context, index) {
                var item = controller.cartItems[index];
                return Dismissible(
                    key: ObjectKey(item.id),
                    onDismissed: (direction) {
                      controller.deleteItem(index);
                    },
                    background: Container(color: Colors.red),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(
                                    right: 8, left: 8, top: 8, bottom: 8),
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(14)),
                                    color: Colors.blue.shade200,
                                    image: DecorationImage(
                                        image:
                                            AssetImage("images/shoes_1.png"))),
                              ),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        padding:
                                            EdgeInsets.only(right: 8, top: 4),
                                        child: Text(item.productName,
                                            maxLines: 2, softWrap: true),
                                      ),
                                      Text(
                                        item.productDescription,
                                      ),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text((controller.cartItems[index]
                                                        .price *
                                                    controller
                                                        .cartItems[index].qty)
                                                .toString()),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: <Widget>[
                                                  IconButton(
                                                    icon: Icon(Icons.remove),
                                                    onPressed: () {
                                                      if (item.qty > 1) {
                                                        item.qty--;
                                                        controller.updateItem(
                                                            index, item);
                                                      }
                                                    },
                                                  ),
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(5),
                                                    child: Text(
                                                      item.qty.toString(),
                                                    ),
                                                  ),
                                                  IconButton(
                                                    icon: Icon(Icons.add),
                                                    onPressed: () {
                                                      if (item.qty >= 1) {
                                                        item.qty++;
                                                        controller.updateItem(
                                                            index, item);
                                                      }
                                                    },
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                flex: 100,
                              )
                            ],
                          ),
                        ),
                      ],
                    ));
              })
          : Center(child: Text("cart is empty."))),
      floatingActionButton: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: double.infinity,
                height: 50,
                decoration: new BoxDecoration(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: Obx(
                        () => Text(
                          "Total :" + controller.totalPrice.toString(),
                          style: TextStyle(color: Get.isDarkMode?Colors.white:Colors.black),
                        ),
                      )),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Obx(() => controller.count > 0
                        ? ElevatedButton(
                            onPressed: () {
                              Get.offNamed(Routes.CHECKOUT);
                            },
                            child: Text("Place Order"))
                        : SizedBox())
                  ],
                )),
          )),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              {
                var product = Product(
                    id: Random().nextInt(1000),
                    productName: "Nike",
                    productImage: "asa",
                    productDescription: "shoes",
                    price: 20,
                    qty: 1);
                controller.addToCart(product);
              }
            },
          ),
        ],
      ),
    );
  }
}
