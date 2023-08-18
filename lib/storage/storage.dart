import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageData extends StatelessWidget {
  
  const StorageData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Storage")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Expanded(
                flex: 3,
                child: ElevatedButton(
                    onPressed: () {
                      GetStorage().write("Name", "Sarwar Ahmad");
                    },
                    child: const Text("Write"))),
            const SizedBox(
              height: 25,
            ),
            Expanded(
                flex: 3,
                child: ElevatedButton(
                    onPressed: () {
                      Get.snackbar("My name", "${GetStorage().read("Name")}");
                    },
                    child: const Text("Read"))),
            const SizedBox(
              height: 25,
            ),
            Expanded(
                flex: 3,
                child: ElevatedButton(
                    onPressed: () {
                      
                      var temp = GetStorage().read("Name");
                      Get.snackbar("Delete",
                          "This message was deleted '${temp.toString()}'");
                          
                      GetStorage().erase();
                    },
                    child: const Text("Erase"))),
          ],
        ),
      ),
    );
  }
}
