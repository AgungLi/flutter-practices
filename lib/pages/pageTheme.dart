import 'package:flutter/material.dart';

class PageTheme extends StatelessWidget {
  static const nameRoute = "/theme";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
        visualDensity: VisualDensity.comfortable,
        // visualDensity: VisualDensity.compact,
        // visualDensity: VisualDensity(horizontal: 0, vertical: 0),
        // primaryColor: Colors.blueGrey,
        // primarySwatch: Colors.grey,
        // primarySwatch: MaterialColor(
        //   0xFFF5E0C3,
        //   <int, Color>{
        //     50: Color(0x1a5D4253),
        //     100: Color(0x1a5D4253),
        //   },
        // ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Theme Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "this is a text",
                style: TextStyle(fontSize: 35),
              ),
              Text(
                "THIS IS A TEXT",
                style: TextStyle(fontSize: 35),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Button'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(),
      ),
    );
  }
}
