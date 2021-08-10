import 'package:flutter/material.dart';
import 'package:flutter_practices/models/cart_item.dart';

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items => _items;

  int get jumlah {
    return _items.length;
  }

  double get totalHarga {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.qty * cartItem.price;
    });
    return total;
  }

  void addCart(String productId, String title, double price) {
    if (_items.containsKey(productId)) {
      // ketika sudaj tersedia key product id
      _items.update(
          productId,
          (value) => CartItem(
                id: value.id,
                title: value.title,
                price: value.price,
                qty: value.qty + 1,
              ));
    } else {
      //Ketika menambah product id baru
      _items.putIfAbsent(
        productId,
        () => CartItem(
            id: DateTime.now().toString(), title: title, price: price, qty: 1),
      );
    }
    notifyListeners();
  }
}
