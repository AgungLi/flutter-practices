import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_practices/bloc/blocs/multicounterbloc.dart';
import 'package:flutter_practices/bloc/blocs/multithemebloc.dart';

class TestMultiBlocProvider extends StatelessWidget {
  static const nameRoute = '\testmultiblocprovider';

  final ThemeData dark = ThemeData.dark();
  final ThemeData light = ThemeData.light();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MultiCounterBloc(),
        ),
        BlocProvider(
          create: (context) => MultiThemeBloc(),
        ),
      ],
      child: BlocBuilder<MultiThemeBloc, bool>(
        builder: (context, state) => MaterialApp(
          theme: state ? dark : light,
          home: PageMultiBlocProvider(),
        ),
      ),
    );
  }
}

class PageMultiBlocProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multi Bloc Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<MultiCounterBloc, int>(
              builder: (context, state) => Text("$state"),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      context.read<MultiCounterBloc>().increment();
                    }),
                IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      context.read<MultiCounterBloc>().decrement();
                    }),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<MultiThemeBloc>().changeTheme(),
        child: Icon(Icons.color_lens),
      ),
    );
  }
}
