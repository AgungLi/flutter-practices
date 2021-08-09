import 'package:flutter/material.dart';
import 'package:flutter_practices/pages/myListview.dart';
import 'package:flutter_practices/pages/pageAppbarWidget.dart';
import 'package:flutter_practices/pages/pageDateformat.dart';
import 'package:flutter_practices/pages/pageDialog.dart';
import 'package:flutter_practices/pages/pageDismissible.dart';
import 'package:flutter_practices/pages/pageDrawer.dart';
import 'package:flutter_practices/pages/pageExtractWidget.dart';
import 'package:flutter_practices/pages/pageGridview.dart';
import 'package:flutter_practices/pages/pageImageWidget.dart';
import 'package:flutter_practices/pages/pageMappinglist.dart';
import 'package:flutter_practices/pages/pageNavigation.dart';
import 'package:flutter_practices/pages/pageRoutes.dart';
import 'package:flutter_practices/pages/pageStateful.dart';
import 'package:flutter_practices/pages/pageTabbar.dart';
import 'package:flutter_practices/pages/pageTextfield.dart';
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
    PageItem(
      icon: Icon(Icons.bar_chart),
      practiceName: "App Bar Widget",
      navigation: PageAppbarWidget.nameRoute,
      desc: "Practice App Bar Widget",
    ),
    PageItem(
      icon: Icon(Icons.tab),
      practiceName: "Tabbar Widget",
      navigation: PageTabbar.nameRoute,
      desc: "Practice Tab Bar Widget",
    ),
    PageItem(
      icon: Icon(Icons.view_column),
      practiceName: "Text Field",
      navigation: PageTextField.nameRoute,
      desc: "Practice Text Field widget",
    ),
    PageItem(
      icon: Icon(Icons.grid_view),
      practiceName: "Grid View",
      navigation: PageGridview.nameRoute,
      desc: "Practice GridView Widget",
    ),
    PageItem(
      icon: Icon(Icons.warning),
      practiceName: "Dialog",
      navigation: PageDialog.nameRoute,
      desc: "Practice Dialog",
    ),
    PageItem(
      icon: Icon(Icons.drafts),
      practiceName: "Dismissible",
      navigation: PageDismissible.nameRoute,
      desc: "Practice Dismissible",
    ),
    PageItem(
      icon: Icon(Icons.navigate_next),
      practiceName: "Navigation",
      navigation: PageNavigation.nameRoute,
      desc: "Practice Navigation",
    ),
    PageItem(
      icon: Icon(Icons.router),
      practiceName: "Page Routes",
      navigation: PageRoutes.nameRoute,
      desc: "Practice Routes",
    ),
    PageItem(
      icon: Icon(Icons.menu),
      practiceName: "Drawer",
      navigation: PageDrawer.nameRoute,
      desc: "Practice Drawers",
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
    );
  }
}
