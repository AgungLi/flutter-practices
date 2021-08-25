import 'package:flutter/material.dart';
import 'package:flutter_practices/getx/getxnavigation/routes/route_name.dart';
import 'package:get/get.dart';

class PageSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Satu"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(RouteName.page_2);
          },
          child: Text('Page 2'),
        ),
      ),
    );
  }
}
