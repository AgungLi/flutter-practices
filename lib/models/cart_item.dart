import 'package:flutter/widgets.dart';

class CartItem {
  String id;
  String title;
  double price;
  int qty;

  CartItem({
    @required this.id,
    @required this.title,
    @required this.price,
    @required this.qty,
  });
}
