import 'package:flutter/material.dart';

class PageLayoutBuilder extends StatelessWidget {
  static const nameRoute = '\pagelayoutbuilder';

  @override
  Widget build(BuildContext context) {
    final widthApp = MediaQuery.of(context).size.width;
    final heightApp = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;
    final myAppBar = AppBar(title: Text("Layout Builder"));
    final heightBody = heightApp - paddingTop - myAppBar.preferredSize.height;

    return Scaffold(
      appBar: myAppBar,
      body: Container(
        width: widthApp,
        height: heightApp * 0.3,
        color: Colors.blueAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyContainer(widthApp),
            MyContainer(widthApp),
            MyContainer(widthApp),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final double widthApp;

  MyContainer(this.widthApp);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: widthApp * 0.25,
          height: constraints.maxHeight * 0.2,
          color: Colors.blueGrey,
        );
      },
    );
  }
}
