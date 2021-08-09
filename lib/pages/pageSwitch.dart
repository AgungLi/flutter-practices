import 'package:flutter/material.dart';

class PageSwitch extends StatelessWidget {
  static const nameRoute = '\pageswitch';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool statusSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Switch(
                activeColor: Colors.green,
                inactiveThumbColor: Colors.indigo,
                inactiveTrackColor: Colors.red,
                value: statusSwitch,
                onChanged: (value) {
                  setState(() {
                    statusSwitch = !statusSwitch;
                  });
                },
              ),
            ),
            Text(
              (statusSwitch == true) ? "Switch On" : "Switch Off",
              style: TextStyle(
                fontSize: 25,
              ),
            )
          ],
        ),
      ),
    );
  }
}
