import 'package:flutter/material.dart';
import 'package:flutter_practices/getx/getxworkers/controllerworkers.dart';
import 'package:get/get.dart';

class MainWorkers extends StatelessWidget {
  static const nameRoute = "\mainworkers";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageWorkers(),
    );
  }
}

class PageWorkers extends StatelessWidget {
  final c = Get.put(ControllerWorkers());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Workers"),
        actions: [
          IconButton(
            onPressed: () => c.reset(),
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "Terjadi Perubahanan : ${c.count} X",
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
              SizedBox(height: 50),
              TextField(
                onChanged: (_) => c.change(),
                decoration: InputDecoration(border: OutlineInputBorder()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
