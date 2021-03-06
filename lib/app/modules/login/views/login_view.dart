import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_demo_project/app/routes/app_pages.dart';
import 'package:getx_demo_project/generated/locales.g.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  static AppBar appbar = AppBar(
    title: Text(''),
    centerTitle: true,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appbar,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height:
                    (Get.height - (appbar.preferredSize.height * 2.5) - 10.0),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      LocaleKeys.welcome.tr,
                      style: Theme.of(context).textTheme.headline5,
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        LocaleKeys.textLogin.tr,
                        style: Theme.of(context).textTheme.subtitle2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: LocaleKeys.enterEmail.tr,
                          hintText: "abc@gmail.com",
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: LocaleKeys.enterPassword.tr,
                          hintText: "******",
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50.0,
                      child: ElevatedButton(
                        child: Text(LocaleKeys.buttons_login.tr),
                        onPressed: () => Get.toNamed(Routes.DASHBOARD),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: GestureDetector(
                        onTap: () => Get.toNamed(Routes.FORGOTPASSWORD),
                        child: Text(
                          LocaleKeys.forgotPassword.tr,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50.0,
                      child: ElevatedButton(
                        child: Text(LocaleKeys.changeLanguage.tr),
                        onPressed: () => {changeLanguage(context)},
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      LocaleKeys.notAccount.tr,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.SIGNUP);
                      },
                      child: Text(
                        LocaleKeys.txtSignUp.tr,
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  changeLanguage(context) {
    Get.bottomSheet(
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10),
          Text("Change Language", style: Theme.of(context).textTheme.headline6),
          ListTile(
              title: Text("English"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Get.updateLocale(Locale('en', 'US'));
                Get.back();
              }),
          ListTile(
              title: Text("Hindi"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Get.updateLocale(Locale('hi', 'IN'));
                Get.back();
              })
        ],
      ),
      backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
      persistent: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(10.0),
          topEnd: Radius.circular(10.0),
        ),
      ),
    );
  }
}
