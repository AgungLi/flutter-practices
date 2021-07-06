import 'package:flutter/material.dart';

class PageTextwidget extends StatelessWidget {
  static const nameRoute = "\pagetextwidget";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widge Text"),
      ),
      body: Center(
        child: Text("Lorem50"),
      ),
    );
  }
}
