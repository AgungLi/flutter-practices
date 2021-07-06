import 'package:flutter/material.dart';
import 'package:flutter_practices/pages/myHomepage.dart';

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
      },
    );
  }
}
