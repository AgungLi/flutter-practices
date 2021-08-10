import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PageProviderReview extends StatelessWidget {
  static const nameRoute = '\pageproviderreview';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
          create: (context) => Counter(), child: Providers()),
    );
  }
}

class Providers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Review"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<Counter>(
            builder: (context, value, child) => Text(
              value.counter.toString(),
              style: TextStyle(fontSize: 25),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    counter.add();
                  }),
              IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    counter.minus();
                  }),
            ],
          )
        ],
      ),
    );
  }
}

class Counter with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void add() {
    _counter += 1;
    notifyListeners();
  }

  void minus() {
    _counter -= 1;
    notifyListeners();
  }
}
