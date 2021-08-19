import 'package:flutter/material.dart';
import 'package:flutter_practices/bloc/blocs/counter.dart';

class BaseBloc extends StatelessWidget {
  static const nameRoute = '\basebloc';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageBloc(),
    );
  }
}

class PageBloc extends StatefulWidget {
  @override
  _PageBlocState createState() => _PageBlocState();
}

class _PageBlocState extends State<PageBloc> {
  CounterBloc bloc = CounterBloc();

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Bloc"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder(
              initialData: bloc.counter,
              stream: bloc.output,
              builder: (context, snapshot) => Text(
                "${snapshot.data}",
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    bloc.inputan.add("minus");
                  },
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    bloc.inputan.add("add");
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
