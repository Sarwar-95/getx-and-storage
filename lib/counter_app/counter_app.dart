import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _count = 0;
  final data = GetStorage();

  @override
  void initState() {
    super.initState();
    if (data.read("Count") != null) {
      _count = data.read("Count");
    }
  }

  @override
  Widget build(BuildContext context) {
    data.writeIfNull("Count", 0);

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Counter App")),
      ),
      body: ListView(
        children: [
          Center(
              child: Text(
            "${data.read("Count")}",
            style: const TextStyle(fontSize: 25),
          )),
          const SizedBox(
            height: 200,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _count++;
                data.write("Count", _count);
              });
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                data.remove("Count");
                _count = 0;
              });
            },
            child: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
