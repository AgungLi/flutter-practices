import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageDateformat extends StatelessWidget {
  static const nameRoute = '\pagedateformat';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Date Format"),
        ),
        body: Center(
          child: Text(
            DateFormat.yMMMEd().add_Hms().format(DateTime.now()),
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
