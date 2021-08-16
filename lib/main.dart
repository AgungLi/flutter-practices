import 'package:flutter/material.dart';
import 'package:flutter_practices/pages/HttpPostFirebase.dart';
import 'package:flutter_practices/pages/checkbox/maincheckbox.dart';
import 'package:flutter_practices/pages/delete_home_provider.dart';
import 'package:flutter_practices/pages/get_home_provider.dart';
import 'package:flutter_practices/pages/get_home_stateful.dart';
import 'package:flutter_practices/pages/key/pages/home_pageKey.dart';
import 'package:flutter_practices/pages/pageApplicationLifecycle.dart';
import 'package:flutter_practices/pages/pageFutureBuildar.dart';
import 'package:flutter_practices/pages/post_home_provider.dart';
import 'package:flutter_practices/pages/post_home_stateful.dart';
import 'package:flutter_practices/pages/myHomepage.dart';
import 'package:flutter_practices/pages/myListview.dart';
import 'package:flutter_practices/pages/pageAppbarWidget.dart';
import 'package:flutter_practices/pages/pageCupertino.dart';
import 'package:flutter_practices/pages/pageDateformat.dart';
import 'package:flutter_practices/pages/pageDatepicker.dart';
import 'package:flutter_practices/pages/pageDialog.dart';
import 'package:flutter_practices/pages/pageDismissible.dart';
import 'package:flutter_practices/pages/pageDrawer.dart';
import 'package:flutter_practices/pages/pageExtractWidget.dart';
import 'package:flutter_practices/pages/pageFittedBox.dart';
import 'package:flutter_practices/pages/pageFlexibleExpanded.dart';
import 'package:flutter_practices/pages/pageGridview.dart';
import 'package:flutter_practices/pages/pageImageWidget.dart';
import 'package:flutter_practices/pages/pageLayoutBuilder.dart';
import 'package:flutter_practices/pages/pageManagementprovider.dart';
import 'package:flutter_practices/pages/pageMappinglist.dart';
import 'package:flutter_practices/pages/pageMediaquery.dart';
import 'package:flutter_practices/pages/pageModel.dart';
import 'package:flutter_practices/pages/pageNavigation.dart';
import 'package:flutter_practices/pages/pageProviderReview.dart';
import 'package:flutter_practices/pages/pageRoutes.dart';
import 'package:flutter_practices/pages/pageStateful.dart';
import 'package:flutter_practices/pages/pageSwitch.dart';
import 'package:flutter_practices/pages/pageTabbar.dart';
import 'package:flutter_practices/pages/pageTextfield.dart';
import 'package:flutter_practices/pages/pageTextwidget.dart';
import 'package:flutter_practices/pages/pageTheme.dart';
import 'package:flutter_practices/pages/widgetLayouting.dart';

import 'pages/pageWidgeLifecycle.dart';
import 'pages/widgetlifecycle/other_page.dart';

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
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
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
        MyModel.nameRoute: (context) => MyModel(),
        PageTheme.nameRoute: (context) => PageTheme(),
        PageMediaquery.nameRoute: (context) => PageMediaquery(),
        PageFlexibelExpended.nameRoute: (context) => PageFlexibelExpended(),
        PageFittedBox.nameRoute: (context) => PageFittedBox(),
        PageLayoutBuilder.nameRoute: (context) => PageLayoutBuilder(),
        PageCupertino.nameRoute: (context) => PageCupertino(),
        PageDatepicker.nameRoute: (context) => PageDatepicker(),
        PageManageProvider.nameRoute: (context) => PageManageProvider(),
        PageProviderReview.nameRoute: (context) => PageProviderReview(),
        HomeStateful.nameRoute: (context) => HomeStateful(),
        HomeHttpProvider.nameRoute: (context) => HomeHttpProvider(),
        GetHomeStateFull.nameRoute: (context) => GetHomeStateFull(),
        GetProvider.nameRoute: (context) => GetProvider(),
        DeleteProvider.nameRoute: (context) => DeleteProvider(),
        HttpPostFirebase.nameRoute: (context) => HttpPostFirebase(),
        PageWidgetLifecycle.nameRoute: (context) => PageWidgetLifecycle(),
        OtherPage.nameRoute: (context) => OtherPage(),
        PageApplicationLifeCycle.nameRoute: (context) =>
            PageApplicationLifeCycle(),
        PageFutureBuilder.nameRoute: (context) => PageFutureBuilder(),
        PageKey.nameRoute: (context) => PageKey(),
        MainCheckbox.nameRoute: (context) => MainCheckbox(),
      },
    );
  }
}
