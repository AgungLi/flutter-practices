import 'package:flutter/material.dart';
import './product.dart';
import 'dart:math';

class Products with ChangeNotifier {
  List<Product> _allproducts = List.generate(
    25,
    (index) {
      return Product(
        id: "id_${index + 1}",
        title: "Product ${index + 1}",
        description: 'Ini adalah deskripsi produk ${index + 1}',
        price: 10 + Random().nextInt(100).toDouble(),
        imageUrl: 'https://picsum.photos/id/$index/200/300',
      );
    },
  );
  List<Product> get allproducts {
    return [..._allproducts]; // ... Spread Collection
  }

  Product findById(productId) {
    return allproducts.firstWhere((prodId) => prodId.id == productId);
  }

  // void addProduct() {
  //   _allproducts.add(value);
  //   notifyListeners();
  // }
}
