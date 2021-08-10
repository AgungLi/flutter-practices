import 'package:flutter/material.dart';

class PageFittedBox extends StatelessWidget {
  static const nameRoute = '\pagefittedbox';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fitted Box"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blue,
                width: 300,
                height: 100,
                child: Center(
                  child: FittedBox(
                    child: Text(
                      "Haloooooooooooooooooooooooo",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.blue,
                width: 300,
                height: 100,
                child: FittedBox(
                    alignment: Alignment.centerLeft,
                    child: Image.network("https://picsum.photos/200/300")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
