import 'package:flutter/material.dart';
import 'package:flutter_practices/pages/widgetlifecycle/counter_page.dart';

class OtherPage extends StatelessWidget {
  static const nameRoute = '\OtherPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Other Page"),
      ),
      body: Center(
        // ignore: deprecated_member_use
        child: OutlineButton(
          onPressed: () {
            Navigator.pushReplacementNamed(
              context,
              CounterPage.nameRoute,
              arguments: ModalRoute.of(context).settings.arguments as int,
            );
          },
          child: Text("Go to counter page"),
        ),
      ),
    );
  }
}
