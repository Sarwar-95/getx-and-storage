import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Snackbar extends StatelessWidget {
  const Snackbar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: ElevatedButton(
          style: ElevatedButton.styleFrom(maximumSize: const Size(200, 50)),
          onPressed: () {
            Get.snackbar("Hello Sarwar", "This is Sarwar Ahmad",
                colorText: Colors.black,
                backgroundColor: Colors.purple.shade100,
                snackPosition: SnackPosition.BOTTOM,
                borderRadius: 18,
                icon: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                padding: const EdgeInsets.all(15),
                isDismissible: false,
                duration: const Duration(seconds: 20),
                showProgressIndicator: true,
                progressIndicatorBackgroundColor: Colors.red.shade300,
                animationDuration: const Duration(seconds: 5),
                mainButton: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text("+")));
          },
          child: const Text(" Add me"),
        )));
  }
}
