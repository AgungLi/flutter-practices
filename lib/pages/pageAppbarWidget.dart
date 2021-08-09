import 'package:flutter/material.dart';

class PageAppbarWidget extends StatelessWidget {
  static const nameRoute = '/pageappbarwidget';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            color: Colors.green,
          ),
          leadingWidth: 50,
          title: Container(
            // width: 35,
            height: 35,
            color: Colors.red,
          ),
          // titleSpacing: 0,
          centerTitle: false,
          actions: [
            Container(
              width: 50,
              // height: 20,
              color: Colors.purple,
            ),
            Container(
              width: 50,
              // height: 20,
              color: Colors.black,
            ),
            Container(
              width: 50,
              // height: 20,
              color: Colors.purple,
            ),
            Container(
              width: 50,
              // height: 20,
              color: Colors.black,
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: Container(width: 50, height: 200, color: Colors.grey),
          ),
          flexibleSpace: Container(
            height: 20,
            child: Center(child: Text("Flexiblespace")),
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
