import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PageFutureBuilder extends StatelessWidget {
  static const nameRoute = '\pagefuturebuilder';
  Future<Map<String, dynamic>> ambilData() async {
    try {
      var hasilGet = await http.get(
        Uri.parse("https://reqres.in/api/users/2"),
      );
      if (hasilGet.statusCode >= 200 && hasilGet.statusCode < 300) {
        var data = json.decode(hasilGet.body)["data"] as Map<String, dynamic>;
        return data;
      } else {
        throw (hasilGet.statusCode);
      }
    } catch (e) {
      throw (e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Builder"),
      ),
      body: FutureBuilder(
        future: ambilData(),
        builder: (context, snapshot) {
          if (snapshot.error != null) {
            return Center(
              child: Text(
                "$snapshot.error",
                style: TextStyle(fontSize: 35),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            print(snapshot.data);

            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "${snapshot.data["first_name"]} ${snapshot.data["last_name"]}",
                  style: TextStyle(fontSize: 35),
                ),
              ],
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ambilData,
      ),
    );
  }
}
