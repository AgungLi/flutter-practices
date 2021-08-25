import 'package:flutter/material.dart';
import 'package:flutter_practices/getx/getxnavigation/pages/page1.dart';
import 'package:flutter_practices/getx/getxnavigation/routes/approutes.dart';
import 'package:get/route_manager.dart';

class MainGetxNavigation extends StatelessWidget {
  static const nameRoute = '\maingetxnavigator';
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: PageSatu(),
      getPages: AppRoute.pages,
    );
  }
}
