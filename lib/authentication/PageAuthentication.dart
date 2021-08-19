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
        ChangeNotifierProxyProvider<Auth, Products>(
          create: (context) => Products(),
          update: (context, auth, products) =>
              products..updateData(auth.token, auth.userId),
        ),
      ],
      builder: (context, child) => Consumer<Auth>(
        builder: (context, auth, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: auth.isAuth
              ? HomePage()
              : FutureBuilder(
                  future: auth.autologin(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Scaffold(
                        body: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    return LoginPage();
                  },
                ),
          routes: {
            AddProductPage.route: (ctx) => AddProductPage(),
            EditProductPage.route: (ctx) => EditProductPage(),
            HomePage.route: (ctx) => HomePage(),
          },
        ),
      ),
    );
  }
}
