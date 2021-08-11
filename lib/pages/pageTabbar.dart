import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PageTabbar extends StatelessWidget {
  static const nameRoute = '\pagetabbar';
  List<Tab> myTab = [
    Tab(
      text: "Tab 1",
      icon: Icon(Icons.add_a_photo),
    ),
    Tab(
      text: "Tab 2",
    ),
    Tab(
      text: "Tab 3",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 2,
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("My Tabbar"),
            bottom: TabBar(
              labelColor: Colors.redAccent,
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
              indicatorColor: Colors.black,
              indicatorPadding: EdgeInsets.all(3),
              indicatorWeight: 5,
              indicator: BoxDecoration(
                color: Colors.amber,
                border: Border(
                  bottom: BorderSide(color: Colors.black, width: 5),
                ),
              ),
              tabs: myTab,
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("Text 1"),
              ),
              Center(
                child: Text("Text 2"),
              ),
              Center(
                child: Text("Text 3"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
