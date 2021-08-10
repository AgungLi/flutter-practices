import 'package:flutter/material.dart';
import 'package:flutter_practices/providers/cart.dart';
import 'package:flutter_practices/screens/cart_screen.dart';
import 'package:flutter_practices/widgets/badge.dart';
import 'package:provider/provider.dart';
import '../widgets/product_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        actions: [
          Consumer<Cart>(
            builder: (context, value, ch) {
              return Badge(
                child: ch,
                value: value.jumlah.toString(),
              );
            },
            child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    CartScreen.routeName,
                  );
                }),
          )
        ],
      ),
      body: ProductGrid(),
    );
  }
}
