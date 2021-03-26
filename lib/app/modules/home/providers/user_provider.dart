import 'package:get/get.dart';

class UserProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'http://www.googgle.com/jsonObject';
  }
}
