import 'package:flutter/material.dart';
import 'package:flutter_practices/pages/myListview.dart';
import 'package:flutter_practices/pages/pageDateformat.dart';
import 'package:flutter_practices/pages/pageExtractWidget.dart';
import 'package:flutter_practices/pages/pageImageWidget.dart';
import 'package:flutter_practices/pages/pageMappinglist.dart';
import 'package:flutter_practices/pages/pageStateful.dart';
import 'package:flutter_practices/pages/pageTextwidget.dart';
import 'package:flutter_practices/pages/widgetLayouting.dart';

class MyHomepage extends StatelessWidget {
  static const nameRoute = '/myhomepage';
  List<PageItem> myItem = [
    PageItem(
      icon: Icon(Icons.ac_unit_outlined),
      practiceName: "Text Widget",
      navigation: PageTextwidget.nameRoute,
      desc: "Pratice Text Widget",
    ),
    PageItem(
      icon: Icon(Icons.pages),
      practiceName: "Layouting Widget",
      navigation: WidgetLayouting.nameRoute,
      desc: "Pratice Widget Layouting / invisible widget",
    ),
    PageItem(
      icon: Icon(Icons.list),
      practiceName: "ListView and ListTile Widget",
      navigation: MyListview.nameRoute,
      desc:
          "Pratice Widget Layouting / invisible widget ListView and ListTile Widget",
    ),
    PageItem(
      icon: Icon(Icons.image),
      practiceName: "Image Widget",
      navigation: PageImagWidget.nameRoute,
      desc: "Pratice Insert Image Widget",
    ),
    PageItem(
      icon: Icon(Icons.extension),
      practiceName: "Extract Widget",
      navigation: PageExtractWidget.nameRoute,
      desc: "Practice Extract Widget",
    ),
    PageItem(
      icon: Icon(Icons.fullscreen_exit_rounded),
      practiceName: "Statefull Widget",
      navigation: PageStatefull.nameRoute,
      desc: "Practice Statefull Widget",
    ),
    PageItem(
      icon: Icon(Icons.map_outlined),
      practiceName: "Mapping List",
      navigation: PageMappinglist.nameRoute,
      desc: "Practice Mapping List",
    ),
    PageItem(
      icon: Icon(Icons.date_range),
      practiceName: "Date Time",
      navigation: PageDateformat.nameRoute,
      desc: "Practice Date Format",
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
