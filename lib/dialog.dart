import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogBox extends StatelessWidget {
  const  DialogBox({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Get.defaultDialog(
                title: "Delete",
                titlePadding: const EdgeInsets.all(8),
                titleStyle: const TextStyle(color: Colors.orange, fontSize: 25),
                middleText: "Please choose the any option",
                middleTextStyle:
                const TextStyle(color: Colors.black, fontSize: 22),
                radius: 25,
                backgroundColor: Colors.blue.shade100,
                barrierDismissible: false,
                buttonColor: Colors.green,
                textCancel: "Cancel",
                cancelTextColor: Colors.black,
                textConfirm: "Confirm",
                confirmTextColor: Colors.black,
                onCancel: () {
                  Get.back();
                },
                onConfirm: () {
                  Get.back();
                  Get.snackbar("Hello", "Sarwar",
                  colorText: Colors.red,
                      snackPosition: SnackPosition.BOTTOM);
                },
                content: Column(
                  children:const [
                    Text("Sarwar"),
                    Text("Ahmad"),
                    Text("Bhuiyan"),
                    Text("Chowdhory")
                  ],
                )
              );
            },
            child: const Text("Click Here")),
      ),
    );
  }
}
