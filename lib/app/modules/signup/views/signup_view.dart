import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_demo_project/app/routes/app_pages.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         appBar: AppBar(
            title: Text("Sign up"),
          ),
          body: ListView(
            padding: const EdgeInsets.all(16.0),
            children: <Widget>[
              Image.asset(
                'images/flutter.png',
                height: 100,
                width: 100,
              ),
              SizedBox(height: 50.0),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'First name',
                    labelText: 'Enter name'),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Email id',
                    labelText: 'Enter email id'),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                    labelText: 'Enter password'),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Confirm Password',
                    labelText: 'Enter confirm password'),
              ),
              SizedBox(height: 10.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: Text("Sign up")),
              ),
              SizedBox(height: 10.0),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have account?'),
                    TextButton(
                      onPressed: () {
                        //forgot password screenLo
                        Get.offAllNamed(Routes.LOGIN);
                      },
                      child: Text('Login'),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
