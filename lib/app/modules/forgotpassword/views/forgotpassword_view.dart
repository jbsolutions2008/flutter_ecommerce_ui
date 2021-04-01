import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forgotpassword_controller.dart';

class ForgotpasswordView extends GetView<ForgotpasswordController> {
  static var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot password'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          Image.asset(
            'assets/ecommerce.webp',
            height: 200,
            width: 200,
          ),
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email',
                labelText: 'Enter an email'),
          ),
          SizedBox(height: 10.0),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  GetUtils.isEmail(emailController.text.toString())
                      ? _showMyDialog(context)
                      : Get.snackbar("Error!", "Enter a valid email id");
                },
                child: Text("Submit")),
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }

  Future<void> _showMyDialog(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('E-commerce'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Your mail sent to register email id'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        );
      },
    );
  }
}
