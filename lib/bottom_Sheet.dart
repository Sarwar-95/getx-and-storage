import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bottomsheet extends StatelessWidget {
  Bottomsheet({super.key});
  final _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: const Text("Add"),
          onPressed: () {
            Get.bottomSheet(
                Container(
                  height: 250,
                  color: Colors.blue[200],
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(children: [
                      const Center(child: Text("Form")),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: _textEditingController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), labelText: "Name"),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            onPressed: () {
                              Get.back();
                              Get.snackbar(
                                  "Welcome ", "Sarwar Ahmad",
                                  snackPosition: SnackPosition.BOTTOM);
                            },
                            child: const Text("Cancel")),
                      ),
                    ]),
                  ),
                ),
                barrierColor: Colors.amber[1],
                isDismissible: false,
                enableDrag: false);
          },
        ),
      ),
    );
  }
}
