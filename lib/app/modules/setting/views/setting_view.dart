import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(''),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Edit Profile"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text("Shipping Address"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text("Payment method"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text("Order History"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text("Language"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text("Notification"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text("Theme"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              changeTheme(context);
            },
          ),
          ListTile(
            title: Text("Privacy policy"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text("Help"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text("Feedback"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text("Rate us"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text("Logout"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

changeTheme(context) {
  Get.bottomSheet(
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 10),
        Text("Change Theme", style: Theme.of(context).textTheme.headline6),
        ListTile(
            title: Text("Light"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Get.changeTheme(ThemeData.light());
              Get.back();
            }),
        ListTile(
            title: Text("Dark"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Get.changeTheme( ThemeData.dark());
              Get.back();
            })
      ],
    ),
    backgroundColor: Get.isDarkMode?Colors.black:Colors.white,
    persistent: false,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusDirectional.only(
        topStart: Radius.circular(10.0),
        topEnd: Radius.circular(10.0),
      ),
    ),
  );
}
