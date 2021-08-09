import 'package:flutter/material.dart';
import 'package:flutter_practices/pages/myHomepage.dart';
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
import 'package:flutter_practices/pages/pageSwitch.dart';
import 'package:flutter_practices/pages/pageTabbar.dart';
import 'package:flutter_practices/pages/pageTextfield.dart';
import 'package:flutter_practices/pages/pageTextwidget.dart';
import 'package:flutter_practices/pages/widgetLayouting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomepage(),
      initialRoute: MyHomepage.nameRoute,
      routes: {
        MyHomepage.nameRoute: (context) => MyHomepage(),
        PageTextwidget.nameRoute: (context) => PageTextwidget(),
        WidgetLayouting.nameRoute: (context) => WidgetLayouting(),
        MyListview.nameRoute: (context) => MyListview(),
        PageImagWidget.nameRoute: (context) => PageImagWidget(),
        PageExtractWidget.nameRoute: (context) => PageExtractWidget(),
        PageStatefull.nameRoute: (context) => PageStatefull(),
        PageMappinglist.nameRoute: (context) => PageMappinglist(),
        PageDateformat.nameRoute: (context) => PageDateformat(),
        PageAppbarWidget.nameRoute: (context) => PageAppbarWidget(),
        PageTabbar.nameRoute: (context) => PageTabbar(),
        PageTextField.nameRoute: (context) => PageTextField(),
        PageGridview.nameRoute: (context) => PageGridview(),
        PageDialog.nameRoute: (context) => PageDialog(),
        PageDismissible.nameRoute: (context) => PageDismissible(),
        PageNavigation.nameRoute: (context) => PageNavigation(),
        PageRoutes.nameRoute: (context) => PageRoutes(),
        PageDrawer.nameRoute: (context) => PageDrawer(),
        PageSwitch.nameRoute: (context) => PageSwitch(),
      },
    );
  }
}
