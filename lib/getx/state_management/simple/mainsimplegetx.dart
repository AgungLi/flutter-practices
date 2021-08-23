import 'package:flutter/material.dart';
import 'package:flutter_practices/getx/state_management/controllers/controller_simple.dart';
import 'package:get/get.dart';

class MainSimpleGetx extends StatelessWidget {
  static const nameRoute = '\MainSimpleGetx';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageMainSimpleGetx(),
    );
  }
}

class PageMainSimpleGetx extends StatelessWidget {
  final countC = Get.put(ControllerSimple());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Management Simple GetX"),
      ),
      body: Center(
        child: GetBuilder<ControllerSimple>(
            // init: ControllerSimple(),
            builder: (controller) => Text("Angka ${controller.count}")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countC.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
