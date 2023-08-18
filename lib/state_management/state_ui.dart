import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/state_management/stateContoller.dart';

class CounterUi extends StatelessWidget {
  const CounterUi({super.key});

  @override
  Widget build(BuildContext context) {
    
    StateManage C = Get.put(StateManage());
    
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Counter App")),
      ),
      body:Center(
        child: Obx(
        () {
          return Text(
            "${C.counter}",
            style: const TextStyle(fontSize: 30),
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrangeAccent,
        onPressed: () {
          C.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
