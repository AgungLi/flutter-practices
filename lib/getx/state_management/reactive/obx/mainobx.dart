import 'package:flutter/material.dart';
import 'package:flutter_practices/getx/state_management/controllers/controller_reactive.dart';
import 'package:get/get.dart';

class MainObx extends StatelessWidget {
  static const nameRoute = '\MainObx';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageMainObx(),
    );
  }
}

class PageMainObx extends StatelessWidget {
  final countC = Get.put(ControllerReactive());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Management Reactive Obx"),
      ),
      body: Center(
        child: Obx(() => Text("Angka ${countC.count}")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countC.increment();
        },
        child: Icon(Icons.change_circle),
      ),
    );
  }
}
