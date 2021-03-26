import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_demo_project/app/modules/home/views/model/item.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('E-commerce Design'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {
              debugPrint("Search");
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Cart',
            onPressed: () {
              debugPrint("Cart");
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 100,
              child: ListView.builder(
                  itemCount: _choices.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      height: 100,
                      child: Card(
                        color: Colors.blue,
                        child: Container(
                          child: Center(
                              child: Text(
                            _choices[index].name,
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              width: double.infinity,
              height: 200,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _choices.length,
                  scrollDirection: Axis.horizontal,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      width: Get.width,
                      child: Card(
                        child: Container(
                            child: Center(
                                child: Image.asset('images/sale.webp',
                                    fit: BoxFit.cover))),
                      ),
                    );
                  }),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset("images/ecommerce.webp"),
                    title: Text("Item " + index.toString()),
                    subtitle: Text("sub Item " + index.toString()),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {},
                  );
                })
          ],
        ),
      ),
    );
  }

  static List<Item> _choices = [
    Item("All", Icon(Icons.shopping_cart)),
    Item("Men", Icon(Icons.shopping_cart)),
    Item("Women", Icon(Icons.shopping_cart)),
    Item("Fashion", Icon(Icons.shopping_cart)),
    Item("Baby", Icon(Icons.shopping_cart)),
    Item("Kids", Icon(Icons.shopping_cart))
  ];
}
