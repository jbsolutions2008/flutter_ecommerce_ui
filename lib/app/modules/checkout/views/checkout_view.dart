import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_demo_project/app/modules/cart/controllers/cart_controller.dart';
import 'package:getx_demo_project/app/routes/app_pages.dart';

import '../controllers/checkout_controller.dart';

class CheckoutView extends GetView<CheckoutController> {
  var cartItem = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
        centerTitle: true,
      ),
      body: Obx(
        () => SingleChildScrollView(
          child: Column(
            children: [
              cartItem.count > 0
                  ? ListView.builder(
                      shrinkWrap: true,
                      itemCount: cartItem.count,
                      itemBuilder: (context, index) {
                        var item = cartItem.cartItems[index];
                        return Dismissible(
                            key: ObjectKey(item.id),
                            onDismissed: (direction) {
                              cartItem.deleteItem(index);
                            },
                            background: Container(color: Colors.red),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 16, right: 16, top: 16),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16))),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(
                                            right: 8,
                                            left: 8,
                                            top: 8,
                                            bottom: 8),
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(14)),
                                            color: Colors.blue.shade200,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "images/shoes_1.png"))),
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
                                                padding: EdgeInsets.only(
                                                    right: 8, top: 4),
                                                child: Text(item.productName,
                                                    maxLines: 2,
                                                    softWrap: true),
                                              ),
                                              Text(
                                                item.productDescription,
                                              ),
                                              Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: <Widget>[
                                                    Text((cartItem
                                                                .cartItems[
                                                                    index]
                                                                .price *
                                                            cartItem
                                                                .cartItems[
                                                                    index]
                                                                .qty)
                                                        .toString()),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: <Widget>[
                                                          IconButton(
                                                            icon: Icon(
                                                                Icons.remove),
                                                            onPressed: () {
                                                              if (item.qty >
                                                                  1) {
                                                                item.qty--;
                                                                cartItem
                                                                    .updateItem(
                                                                        index,
                                                                        item);
                                                              }
                                                            },
                                                          ),
                                                          Container(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5),
                                                            child: Text(
                                                              item.qty
                                                                  .toString(),
                                                            ),
                                                          ),
                                                          IconButton(
                                                            icon:
                                                                Icon(Icons.add),
                                                            onPressed: () {
                                                              if (item.qty >=
                                                                  1) {
                                                                item.qty++;
                                                                cartItem
                                                                    .updateItem(
                                                                        index,
                                                                        item);
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
                  : Center(child: Text("cart is empty.")),
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    // Align however you like (i.e .centerRight, centerLeft)
                    child: Text(
                      "Mode of payment:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    // Align however you like (i.e .centerRight, centerLeft)
                    child: Text("Card ending with 4242"),
                  ),
                ],
              ),
              SizedBox(height: 10),
              dashedHorizontalLine(),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    // Align however you like (i.e .centerRight, centerLeft)
                    child: Text(
                      "Delivery to:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  FittedBox(
                    fit: BoxFit.cover,
                    child:
                    Text(
                      "4/53,Street no.10,Sector 34,Dlf Phase 2 \n Mumbai,India,10001",
                      //style: TextStyle(fontSize: 18),
                    ),),
                ],
              ),
            ],
          ),
        ),
      ),
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
                          "Total :" + cartItem.totalPrice.toString(),
                          style: TextStyle(color: Colors.black),
                        ),
                      )),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Obx(() => cartItem.count > 0
                        ? ElevatedButton(
                            onPressed: () {
                              _showMyDialog(context, cartItem);
                            },
                            child: Text("Place Order"))
                        : SizedBox())
                  ],
                )),
          )),
        ],
      ),
    );
  }
}

Widget dashedHorizontalLine() {
  return Row(
    children: [
      for (int i = 0; i < 200; i++)
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
    ],
  );
}

Future<void> _showMyDialog(context, CartController cartItem) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('E-commerce'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Your order successfully placed'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('OK'),
            onPressed: () {
              cartItem.clearAll();
              Get.back();
              Get.offNamed(Routes.DASHBOARD);
            },
          ),
        ],
      );
    },
  );
}
