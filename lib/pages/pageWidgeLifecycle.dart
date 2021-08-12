import 'package:flutter/material.dart';
import 'package:flutter_practices/pages/widgetlifecycle/counter_page.dart';
import 'package:flutter_practices/pages/widgetlifecycle/other_page.dart';

class PageWidgetLifecycle extends StatelessWidget {
  static const nameRoute = '\pagewidgetlifecycle';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterPage(),
      routes: {
        CounterPage.nameRoute: (ctx) => CounterPage(),
        OtherPage.nameRoute: (ctx) => OtherPage(),
      },
    );
  }
}
