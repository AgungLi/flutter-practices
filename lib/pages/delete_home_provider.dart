import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_practices/models/delete_http_provider.dart';
import 'package:provider/provider.dart';

class DeleteProvider extends StatelessWidget {
  static const nameRoute = '\DeleteProvider';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => DeleteHttpProvider(),
        child: DeleteHomeProvider(),
      ),
    );
  }
}

class DeleteHomeProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dataProvider =
        Provider.of<DeleteHttpProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("DELETE - PROVIDER"),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                height: 100,
                width: 100,
                child: Consumer<DeleteHttpProvider>(
                  builder: (context, value, child) => Image.network(
                    (value.data["avatar"] == null)
                        ? "https://www.uclg-planning.org/sites/default/files/styles/featured_home_left/public/no-user-image-square.jpg?itok=PANMBJF-"
                        : value.data["avatar"],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(
              child: Consumer<DeleteHttpProvider>(
                builder: (context, value, child) => Text(
                  (value.data["id"] == null)
                      ? "ID : Belum ada data"
                      : "ID : ${value.data["id"].toString()}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(child: Text("Name : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Consumer<DeleteHttpProvider>(
                builder: (context, value, child) => Text(
                  (value.data['first_name'] == null)
                      ? "Belum ada data"
                      : value.data['first_name'] +
                          " " +
                          value.data['last_name'],
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(child: Text("Email : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Consumer<DeleteHttpProvider>(
                builder: (context, value, child) => Text(
                  (value.data['email'] == null)
                      ? "Belum ada data"
                      : value.data['email'],
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 100),
            OutlinedButton(
              onPressed: () {
                dataProvider.connectAPI(
                    (1 + Random().nextInt(10)).toString(), context);
              },
              child: Text(
                "GET DATA",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          dataProvider.deleteData(context);
        },
        child: Icon(Icons.delete),
      ),
    );
  }
}