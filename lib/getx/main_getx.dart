import 'package:flutter/material.dart';
import 'package:flutter_practices/getx/controllers/counter_countroller.dart';
import 'package:get/get.dart';

class MainGetX extends StatelessWidget {
  static const nameRoute = "\maingetx";
  final counterC = Get.put(ControlCounter());
  @override
  Widget build(BuildContext context) {
    return Obx(() => MaterialApp(
          theme: counterC.isDark.value ? ThemeData.dark() : ThemeData.light(),
          home: CounterGetX(),
        ));
  }
}

class CounterGetX extends StatelessWidget {
  final c = Get.find<ControlCounter>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter GetX"),
      ),
      body: Center(
        child: Obx(() => Text("Angka : ${c.counter} ")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => c.changeTheme(),
        child: Icon(Icons.ad_units),
      ),
    );
  }
}
