import 'package:flutter/material.dart';

class WidgetLayouting extends StatelessWidget {
  static const nameRoute = '\widgetlayouting';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Practice Widget Layouting as a invisible widget"),
        ),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Widget Column : "),
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.amber,
                ),
                Container(
                  width: 200,
                  height: 50,
                  color: Colors.green,
                ),
                Container(
                  width: 300,
                  height: 50,
                  color: Colors.blue,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Widget Row : "),
                Container(
                  width: 50,
                  height: 100,
                  color: Colors.amber,
                ),
                Container(
                  width: 50,
                  height: 200,
                  color: Colors.blue,
                ),
                Container(
                  width: 50,
                  height: 300,
                  color: Colors.green,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text("Widget Stack : "),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.amber,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
