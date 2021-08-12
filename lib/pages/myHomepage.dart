import 'package:flutter/material.dart';
import 'package:flutter_practices/pages/HttpPostFirebase.dart';
import 'package:flutter_practices/pages/delete_home_provider.dart';
import 'package:flutter_practices/pages/get_home_provider.dart';
import 'package:flutter_practices/pages/get_home_stateful.dart';
import 'package:flutter_practices/pages/pageApplicationLifecycle.dart';
import 'package:flutter_practices/pages/pageFutureBuildar.dart';
import 'package:flutter_practices/pages/pageWidgeLifecycle.dart';
import 'package:flutter_practices/pages/post_home_provider.dart';
import 'package:flutter_practices/pages/post_home_stateful.dart';
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

// ignore: must_be_immutable
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
    PageItem(
      icon: Icon(Icons.switch_account),
      practiceName: "Switch",
      navigation: PageSwitch.nameRoute,
      desc: "Practice Switch",
    ),
    PageItem(
      icon: Icon(Icons.model_training),
      practiceName: "Model",
      navigation: MyModel.nameRoute,
      desc: "Practice Model",
    ),
    PageItem(
      icon: Icon(Icons.thermostat_rounded),
      practiceName: "Theme",
      navigation: PageTheme.nameRoute,
      desc: "Practice Theme",
    ),
    PageItem(
      icon: Icon(Icons.query_builder),
      practiceName: "Media Query",
      navigation: PageMediaquery.nameRoute,
      desc: "Practice Media Query",
    ),
    PageItem(
      icon: Icon(Icons.expand),
      practiceName: "Flexible and Expended",
      navigation: PageFlexibelExpended.nameRoute,
      desc: "Practice Flexible and expended",
    ),
    PageItem(
      icon: Icon(Icons.fit_screen),
      practiceName: "Fitted Box",
      navigation: PageFittedBox.nameRoute,
      desc: "Practice Fitted Box",
    ),
    PageItem(
      icon: Icon(Icons.layers_outlined),
      practiceName: "Layour Builder",
      navigation: PageLayoutBuilder.nameRoute,
      desc: "Practice Layour Builder",
    ),
    PageItem(
      icon: Icon(Icons.ios_share),
      practiceName: "Cuppertion Design",
      navigation: PageCupertino.nameRoute,
      desc: "Practice Cuppertion Design",
    ),
    PageItem(
      icon: Icon(Icons.date_range_outlined),
      practiceName: "Date Picker",
      navigation: PageDatepicker.nameRoute,
      desc: "Practice Date Picker",
    ),
    PageItem(
      icon: Icon(Icons.model_training_sharp),
      practiceName: "State Manage Provider",
      navigation: PageManageProvider.nameRoute,
      desc: "Practice State Manage Provider",
    ),
    PageItem(
      icon: Icon(Icons.rate_review),
      practiceName: "Provider Review",
      navigation: PageProviderReview.nameRoute,
      desc: "Practice Provider Review",
    ),
    PageItem(
      icon: Icon(Icons.http),
      practiceName: "HTTP Request Post Method StateFull",
      navigation: HomeStateful.nameRoute,
      desc: "Practice HTTP Request Post Method",
    ),
    PageItem(
      icon: Icon(Icons.http_sharp),
      practiceName: "HTTP Request Post Method Provider",
      navigation: HomeHttpProvider.nameRoute,
      desc: "Practice HTTP Request Post Method Provider",
    ),
    PageItem(
      icon: Icon(Icons.http),
      practiceName: "HTTP Request Get Method StateFull",
      navigation: GetHomeStateFull.nameRoute,
      desc: "Practice HTTP Request Get Method",
    ),
    PageItem(
      icon: Icon(Icons.http),
      practiceName: "HTTP Request Get Method Provider",
      navigation: GetProvider.nameRoute,
      desc: "Practice HTTP Request Get Method Provider",
    ),
    PageItem(
      icon: Icon(Icons.http),
      practiceName: "HTTP Request Delete Method Provider",
      navigation: DeleteProvider.nameRoute,
      desc: "Practice HTTP Request Delete Method Provider",
    ),
    PageItem(
      icon: Icon(Icons.fire_extinguisher),
      practiceName: "HTTP Request Post Method Firebase",
      navigation: HttpPostFirebase.nameRoute,
      desc: "Practice HTTP Request Post Method Firebase",
    ),
    PageItem(
      icon: Icon(Icons.reduce_capacity_outlined),
      practiceName: "Widget LifeCycle",
      navigation: PageWidgetLifecycle.nameRoute,
      desc: "Practice Widget LifeCycle",
    ),
    PageItem(
      icon: Icon(Icons.app_blocking),
      practiceName: "Application LifeCycle",
      navigation: PageApplicationLifeCycle.nameRoute,
      desc: "Practice Application LifeCycle",
    ),
    PageItem(
      icon: Icon(Icons.build),
      practiceName: "Future Builder",
      navigation: PageFutureBuilder.nameRoute,
      desc: "Practice Future Builder",
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
