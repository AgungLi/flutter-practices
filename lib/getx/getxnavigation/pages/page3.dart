import 'package:flutter/material.dart';
import 'package:flutter_practices/getx/getxnavigation/routes/route_name.dart';
import 'package:get/get.dart';

class PageTiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Tiga"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(RouteName.page_1);
          },
          child: Text('Page 1'),
        ),
      ),
    );
  }
}
