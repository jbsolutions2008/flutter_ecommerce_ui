import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo_project/app/modules/cart/views/cart_view.dart';
import 'package:getx_demo_project/app/modules/home/views/home_view.dart';
import 'package:getx_demo_project/app/modules/setting/views/setting_view.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  static List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    Text(
      'Index 1: Business',
    ),
    CartView(),
    SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Obx(() => _widgetOptions.elementAt(controller.currentIndex.value)),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              label: 'Offer',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: controller.currentIndex.value,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    controller.onTapBottomNavigationItem(index);
  }
}
