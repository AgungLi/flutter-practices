import 'dart:math';

import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class MyModel extends StatelessWidget {
  static const nameRoute = '\mymodel';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MarketPlace(),
    );
  }
}

class MarketPlace extends StatelessWidget {
  Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> dummyData = List.generate(100, (index) {
      return Product(
          "https://picsum.photos/id/$index/200",
          faker.food.restaurant(),
          10000 + Random().nextInt(100000),
          faker.lorem.sentence());
    });
    return Scaffold(
        appBar: AppBar(
          title: Text("Marketplace"),
        ),
        body: GridView.builder(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return GridTile(
              child: Image.network(dummyData[index].imageURL),
              footer: Container(
                height: 80,
                color: Colors.blue.withOpacity(0.8),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      dummyData[index].judul,
                      maxLines: 1,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Text(
                      "Rp. ${dummyData[index].harga}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Text(
                      dummyData[index].deskripsi,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: dummyData.length,
        ));
  }
}

class Product {
  @required
  String judul;
  @required
  String imageURL;
  @required
  int harga;
  @required
  String deskripsi;

  Product(this.imageURL, this.judul, this.harga, this.deskripsi);
}
