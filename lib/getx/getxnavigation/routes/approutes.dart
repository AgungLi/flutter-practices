import 'package:flutter_practices/getx/getxnavigation/pages/page1.dart';
import 'package:flutter_practices/getx/getxnavigation/pages/page3.dart';
import 'package:flutter_practices/getx/getxnavigation/routes/route_name.dart';
import 'package:flutter_practices/pages/pageNavigation.dart';
import 'route_name.dart';
import 'package:get/get.dart';

class AppRoute {
  static final pages = [
    GetPage(name: RouteName.page_1, page: () => PageSatu()),
    GetPage(name: RouteName.page_2, page: () => PageDua()),
    GetPage(name: RouteName.page_3, page: () => PageTiga()),
  ];
}
