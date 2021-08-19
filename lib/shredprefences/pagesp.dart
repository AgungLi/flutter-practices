import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageSharedPreferences extends StatefulWidget {
  static const nameRoute = '\pagesharedpreferences';
  @override
  _PageSharedPreferencesState createState() => _PageSharedPreferencesState();
}

class _PageSharedPreferencesState extends State<PageSharedPreferences> {
  int counter = 0;

  bool isDark = false;

  Future<void> setPreferences() async {
    final jembatan = await SharedPreferences.getInstance();

    if (jembatan.containsKey('myData')) {
      jembatan.clear();
    }
    final myData = json.encode({
      'counter': counter.toString(),
      'isDark': isDark.toString(),
    });

    jembatan.setString('myData', myData);

    setState(() {});
  }

  Future<void> getPreferences() async {
    final jembatan = await SharedPreferences.getInstance();

    if (jembatan.containsKey('myData')) {
      final myData =
          json.decode(jembatan.getString('myData')) as Map<String, dynamic>;

      counter = int.parse(myData["counter"]);
      isDark = myData["isDark"] == "true" ? true : false;
    }
  }

  void minus() {
    counter = counter - 1;
    setPreferences();
  }

  void add() {
    counter = counter + 1;
    setPreferences();
  }

  void changeTheme() {
    isDark = !isDark;
    setPreferences();
  }

  void refresh() {
    counter = 0;
    isDark = false;
    setPreferences();
  }

  ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.amber,
    primarySwatch: Colors.amber,
    accentColor: Colors.amber,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: Colors.white,
        side: BorderSide(
          color: Colors.white,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
  );

  ThemeData light = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.amber,
    primarySwatch: Colors.amber,
    accentColor: Colors.amber,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: Colors.black,
        side: BorderSide(
          color: Colors.black,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getPreferences(),
      builder: (context, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: isDark ? dark : light,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Shared Preferences"),
            actions: [
              IconButton(icon: Icon(Icons.refresh), onPressed: refresh)
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Angka saat ini adalah : $counter",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // ignore: deprecated_member_use
                    OutlineButton(
                      onPressed: minus,
                      child: Icon(Icons.remove),
                    ),
                    // ignore: deprecated_member_use
                    OutlineButton(
                      onPressed: add,
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: changeTheme,
            child: Icon(Icons.color_lens),
          ),
        ),
      ),
    );
  }
}
