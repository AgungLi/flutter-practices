import 'package:flutter/material.dart';

// kalo di pake pada stateless widgetbinding dapat digunakan pada construktor
// karane tidak punya dispose

class PageApplicationLifeCycle extends StatefulWidget {
  static const nameRoute = '\pageaplicationlifecycle';

  @override
  _PageApplicationLifeCycleState createState() =>
      _PageApplicationLifeCycleState();
}

class _PageApplicationLifeCycleState extends State<PageApplicationLifeCycle>
    with WidgetsBindingObserver {
  int number = 0;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print(state);
    switch (state) {
      case AppLifecycleState.inactive:
        setState(() {
          number = 99;
        });
        break;
      case AppLifecycleState.paused:
        break;
      case AppLifecycleState.detached:
        break;
      case AppLifecycleState.resumed:
        setState(() {
          number = 1;
        });
        break;
      default:
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  void didChangeDependencies() {
    print(number);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Application Lifecycle"),
      ),
      body: Center(
        child: Text(
          "$number",
          style: TextStyle(fontSize: 35),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number++;
          });
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
