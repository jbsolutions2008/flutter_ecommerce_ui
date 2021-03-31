import 'package:get/get.dart';
import 'package:getx_demo_project/app/modules/counter/model/Student.dart';

class CounterController extends GetxController {
  var studentItem = [
    Student(name: "Pratap", age: 30),
    Student(name: "Pratap s", age: 50)
  ].obs;

  int get count => studentItem.length;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void addToCart(Student student) {
    studentItem.add(student);
  }

  void deleteItem(int pos) {
    studentItem.removeAt(pos);
  }

  void updateItem(int pos, Student student) {
    studentItem[pos] = student;
  }
}
