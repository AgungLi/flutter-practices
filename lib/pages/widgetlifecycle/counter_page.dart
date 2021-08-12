import 'package:flutter/material.dart';

import 'widget/widget_counter.dart';

class CounterPage extends StatefulWidget {
  CounterPage() {
    print("============");
    print("constructor statefull counter page");
  }

  static const nameRoute = '\counterpage';

  @override
  _CounterPageState createState() {
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  void didChangeDependencies() {
    int numberState = ModalRoute.of(context).settings.arguments as int;
    if (numberState != null) {
      print("Nilai dikembali ke state terakhir");
      counter = numberState;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Page"),
      ),
      body: WidgetCounter(counter: counter),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
