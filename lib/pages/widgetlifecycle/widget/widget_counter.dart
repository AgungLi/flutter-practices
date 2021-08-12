import 'package:flutter/material.dart';

import '../other_page.dart';

class WidgetCounter extends StatefulWidget {
  WidgetCounter({
    Key key,
    @required this.counter,
  }) {
    print("+++++++++++");

    print("Constructor Widget");
  }

  final int counter;

  @override
  _WidgetCounterState createState() {
    print("createState()");
    return _WidgetCounterState();
  }
}

class _WidgetCounterState extends State<WidgetCounter> {
  @override
  void deactivate() {
    print("deactivate");
    super.deactivate();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  // ignore: must_call_super
  void didUpdateWidget(covariant WidgetCounter oldWidget) {
    print("Old : ${oldWidget.counter}");
    print("didUpdateWidget");
    print("New : ${widget.counter}");
  }

  @override
  void dispose() {
    print("dispose");
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    print("initState");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${widget.counter}",
            style: TextStyle(fontSize: 35),
          ),
          SizedBox(
            height: 50,
          ),
          // ignore: deprecated_member_use
          OutlineButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                OtherPage.nameRoute,
                arguments: widget.counter,
              );
            },
            child: Text("Go to other page"),
          )
        ],
      ),
    );
  }
}
