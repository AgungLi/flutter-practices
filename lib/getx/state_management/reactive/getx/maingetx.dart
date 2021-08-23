import 'package:flutter/material.dart';
import 'package:flutter_practices/getx/state_management/controllers/controller_reactive.dart';
import 'package:get/get.dart';

class MainReactiveGetX extends StatelessWidget {
  static const nameRoute = '\maingetx';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageMainGetX(),
    );
  }
}

class PageMainGetX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Management Reactive GetX"),
      ),
      body: Center(
        child: GetX<ControllerReactive>(
          init: ControllerReactive(),
          builder: (controller) => Text("Angka ${controller.count}"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<ControllerReactive>().increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
