import 'package:flutter/material.dart';
import 'package:flutter_practices/authentication/pages/auth_page.dart';
import 'package:flutter_practices/authentication/providers/auth.dart';
import 'package:provider/provider.dart';

import 'providers/products.dart';

import 'pages/home_page.dart';
import 'pages/add_product_page.dart';
import 'pages/edit_product_page.dart';

void main() {
  runApp(PageAuthentication());
}

class PageAuthentication extends StatelessWidget {
  static const nameRoute = '\pageauthentication';
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Auth(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
        routes: {
          AddProductPage.route: (ctx) => AddProductPage(),
          EditProductPage.route: (ctx) => EditProductPage(),
          HomePage.route: (ctx) => HomePage(),
        },
      ),
    );
  }
}
