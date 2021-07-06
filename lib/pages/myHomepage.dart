import 'package:flutter/material.dart';
import 'package:flutter_practices/pages/pageTextwidget.dart';

class MyHomepage extends StatelessWidget {
  static const nameRoute = '/myhomepage';
  List<PageItem> myItem = [
    PageItem(
      icon: Icon(Icons.ac_unit_outlined),
      practiceName: "Text Widget",
      navigation: PageTextwidget.nameRoute,
      desc: "Pratice Text Widget",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Flutter Practice"),
        ),
        body: ListView(
          children: myItem,
        ));
  }
}

class PageItem extends StatelessWidget {
  final Icon icon;
  final String practiceName;
  final String navigation;
  final String desc;

  PageItem({this.icon, this.practiceName, this.navigation, this.desc});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(practiceName),
      subtitle: Text(desc),
      onTap: () {
        Navigator.of(context).pushNamed(navigation);
      },
      trailing: Text("10:00 PM"),
    );
  }
}
