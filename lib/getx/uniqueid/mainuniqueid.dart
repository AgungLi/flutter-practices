import 'package:flutter/material.dart';
import 'package:flutter_practices/getx/state_management/controllers/controller_uniqueid.dart';
import 'package:get/get.dart';

class MainUniqueId extends StatelessWidget {
  static const nameRoute = '\mainuniqueid';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PageUniqueId());
  }
}

class PageUniqueId extends StatelessWidget {
  final c = Get.put(ControllerUniqueId());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Unique Id"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<ControllerUniqueId>(
              id: "jon",
              builder: (_) {
                return Text("Jon ${c.count}");
              },
            ),
            GetBuilder<ControllerUniqueId>(
              id: "ben",
              builder: (_) {
                return Text("Ben ${c.count}");
              },
            ),
            GetBuilder<ControllerUniqueId>(
              builder: (_) {
                return Text("Umum ${c.count}");
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          c.add();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
