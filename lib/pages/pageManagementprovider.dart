import 'package:flutter/material.dart';
import '../providers/all_products.dart';
import 'package:provider/provider.dart';
import '../screens/products_overview_screen.dart';
import '../screens/product_detail_screen.dart';

class PageManageProvider extends StatelessWidget {
  static const nameRoute = '\pagemanageprovider';
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        },
      ),
    );
  }
}
