import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import 'add_product_page.dart';
import '../widgets/product_item.dart';

class PageKey extends StatelessWidget {
  static const nameRoute = "/PageKey";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Products>(
      create: (context) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePageKey(),
        routes: {
          HomePageKey.routeName: (ctx) => HomePageKey(),
          AddProductPage.routeName: (ctx) => AddProductPage(),
        },
      ),
    );
  }
}

class HomePageKey extends StatelessWidget {
  static const routeName = "/homekey";

  @override
  Widget build(BuildContext context) {
    var products = Provider.of<Products>(context);
    var allProducts = products.allProducts;
    return Scaffold(
      appBar: AppBar(
        title: Text("All Products"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () =>
                Navigator.pushNamed(context, AddProductPage.routeName),
          ),
        ],
      ),
      body: (allProducts.length == 0)
          ? Center(
              child: Text(
                "No Data",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            )
          : ListView(
              children: allProducts
                  .map(
                    (e) => ProductItem(
                      ValueKey(e.id),
                      e.id,
                      e.title,
                      e.date,
                    ),
                  )
                  .toList(),
            ),
    );
  }
}
