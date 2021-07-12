import 'package:flutter/material.dart';

class PageImagWidget extends StatelessWidget {
  static const nameRoute = '\pageimagewidget';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pratice Insert Image On Page"),
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.blue,
            child: Image.asset(
              "assets/images/bmth.jpg",
              fit: BoxFit.cover,
            ),
            // child: Image(
            //   fit: BoxFit.cover,
            //   image: AssetImage("assets/images/bmth.jpg"),
            //   // image: NetworkImage("https://picsum.photos/350/500"),
            // ),
          ),
        ),
      ),
    );
  }
}
