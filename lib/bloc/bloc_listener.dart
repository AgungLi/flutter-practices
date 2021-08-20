// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestBlocListener extends StatefulWidget {
  static const nameRoute = '\testbloclistener';

  @override
  _TestBlocListenerState createState() => _TestBlocListenerState();
}

class _TestBlocListenerState extends State<TestBlocListener> {
  bool isDark = false;

  final ThemeData dark = ThemeData.dark();

  final ThemeData light = ThemeData.light();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBlocListener(),
        ),
        BlocProvider(
          create: (context) => ThemeBlocListener(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<CounterBlocListener, int>(
            listener: (context, state) {
              if (state >= 10) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("lebih dari 10"),
                    duration: Duration(microseconds: 500),
                  ),
                );
              }
              if (state % 1 == 0) {
                setState(() {
                  isDark = !isDark;
                });
              }
            },
          ),
        ],
        child: BlocBuilder<ThemeBlocListener, bool>(
          builder: (context, state) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: state == isDark ? dark : light,
            home: PageBlocListener(),
          ),
        ),
      ),
    );
  }
}

class PageBlocListener extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc Listener"),
        actions: [
          IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () => context.read<ThemeBlocListener>().changetheme())
        ],
      ),
      body: Center(
        child: BlocListener<CounterBlocListener, int>(
          listener: (context, state) {},
          child: BlocBuilder<CounterBlocListener, int>(
            builder: (context, state) => Text("$state"),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<CounterBlocListener>().increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}

class CounterBlocListener extends Cubit<int> {
  CounterBlocListener() : super(0);

  void increment() => emit(state + 1);
}

class ThemeBlocListener extends Cubit<bool> {
  ThemeBlocListener() : super(false);

  void changetheme() => emit(!state);
}
