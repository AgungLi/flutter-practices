import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestBlocConsumer extends StatelessWidget {
  static const nameRoute = '\testblocconsumer';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
          create: (context) => CounterBlocConsumer(),
          child: PageBlocConsumer()),
    );
  }
}

class PageBlocConsumer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc Consumer"),
      ),
      body: Center(
        child: BlocConsumer<CounterBlocConsumer, int>(
          buildWhen: (previous, current) {
            print("prev : $previous --- curr : $current");
            if (current > 1) {
              return true;
            }
            return false;
          },
          listenWhen: (previous, current) {
            print("prev : $previous --- curr : $current");
            if (current > 10) {
              return true;
            }
            return false;
          },
          listener: (context, state) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: Duration(microseconds: 500),
                content: Text("Diatas 10"),
              ),
            );
          },
          builder: (context, state) {
            return Text("$state");
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<CounterBlocConsumer>().increment(),
        child: Icon(Icons.ac_unit),
      ),
    );
  }
}

class CounterBlocConsumer extends Cubit<int> {
  CounterBlocConsumer() : super(0);
  void increment() => emit(state + 1);
}
