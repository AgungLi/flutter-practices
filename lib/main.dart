import 'package:flutter/material.dart';
import 'package:flutter_practices/pages/myHomepage.dart';
import 'package:flutter_practices/pages/myListview.dart';
import 'package:flutter_practices/pages/pageTextwidget.dart';
import 'package:flutter_practices/pages/widgetLayouting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomepage(),
      initialRoute: MyHomepage.nameRoute,
      routes: {
        MyHomepage.nameRoute: (context) => MyHomepage(),
        PageTextwidget.nameRoute: (context) => PageTextwidget(),
        WidgetLayouting.nameRoute: (context) => WidgetLayouting(),
        MyListview.nameRoute: (context) => MyListview(),
      },
    );
  }
}
