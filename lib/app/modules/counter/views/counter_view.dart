import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo_project/app/modules/counter/model/Student.dart';
import '../controllers/counter_controller.dart';

class CounterView extends GetView<CounterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CounterView'),
        centerTitle: true,
      ),
      body: Center(
          child: Obx(() => controller.count > 0
              ? ListView.builder(
                  itemCount: controller.count,
                  itemBuilder: (context, index) {
                    var item = controller.studentItem[index];
                    return ListTile(
                      title: Text(item.name+" $index"),
                      trailing: Icon(Icons.delete),
                      onTap: () {
                        controller.deleteItem(index);
                      },
                    );
                  })
              : Text("No Data"))),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            final student = Student(name: "Pratap Solanki", age: 30);
            controller.updateItem(0,student);
          },
          child: Icon(Icons.add)),
    );
  }
}
