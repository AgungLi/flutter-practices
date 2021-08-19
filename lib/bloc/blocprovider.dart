import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_practices/bloc/blocs/bpcounter.dart';

class BlocProviderTest extends StatelessWidget {
  static const nameRoute = '\blockprovider';
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => CounterBlocPro(),
        child: PageBlocProvider(),
      ),
    );
  }
}

class PageBlocProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("build");
    var bloc = BlocProvider.of<CounterBlocPro>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBlocPro, int>(
              builder: (context, state) {
                print("State : $state .... Counter state : ${bloc.counter}");
                return Text(
                  (state == bloc.counter)
                      ? "Angka saat ini : $state"
                      : "Counter state : ${bloc.counter}",
                );
              },
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
                    bloc.add('minus');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    bloc.add('add');
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
