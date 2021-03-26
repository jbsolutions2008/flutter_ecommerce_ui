import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16))),
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
                                  image: AssetImage("images/shoes_1.png"))),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(right: 8, top: 4),
                                  child: Text("NIKE XTM Basketball Shoeas",
                                      maxLines: 2, softWrap: true),
                                ),
                                Text(
                                  "Green M",
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text("\$299.00"),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Icon(
                                              Icons.remove,
                                              size: 30,
                                              color: Colors.grey.shade700,
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(5),
                                              child: Text(
                                                "1",
                                              ),
                                            ),
                                            Icon(
                                              Icons.add,
                                              size: 30,
                                              color: Colors.grey.shade700,
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
                  )
                ],
              );
            }));
  }
}
