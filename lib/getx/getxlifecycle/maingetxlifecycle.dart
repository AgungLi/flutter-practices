import 'package:flutter/material.dart';
import 'package:flutter_practices/getx/controllers/controller_lifecycle.dart';
import 'package:flutter_practices/getx/getxlifecycle/textfilegetxlifecycle.dart';
import 'otherpage.dart';
import 'package:get/get.dart';

class MainGetLifeCycle extends StatelessWidget {
  static const nameRoute = '\maingetxlifecycle';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageMainGetxLifecycle(),
    );
  }
}

class PageMainGetxLifecycle extends StatelessWidget {
  final countC = Get.put(ControllerLifeCycle());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => OtherPageLifecycle(),
              ),
            ),
            icon: Icon(
              Icons.refresh,
            ),
          ),
          IconButton(
            onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => HomeTextField(),
              ),
            ),
            icon: Icon(
              Icons.text_fields,
            ),
          ),
        ],
        title: Text("GetX Life Cycle"),
      ),
      body: Center(
        child: CountWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countC.add();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class CountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerLifeCycle>(
      initState: (_) => print("Initstate"),
      didChangeDependencies: (state) => print("didchangedependencies"),
      dispose: (state) => print("dispose"),
      builder: (c) => Text("Angka ${c.count}"),
    );
  }
}
