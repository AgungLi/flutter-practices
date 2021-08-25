import 'package:flutter/material.dart';
import 'package:flutter_practices/getx/getxnavigation/routes/route_name.dart';
import 'package:get/get.dart';

class PageDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Dua"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(RouteName.page_3);
          },
          child: Text('Page 3'),
        ),
      ),
    );
  }
}
