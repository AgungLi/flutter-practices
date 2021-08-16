import 'package:flutter/material.dart';

class PageDropdown extends StatefulWidget {
  static const nameRoute = '\pagedropdown';

  @override
  _PageDropdownState createState() => _PageDropdownState();
}

class _PageDropdownState extends State<PageDropdown> {
  String selected;

  List<String> data = [
    "joni",
    "panjul",
    "sugeng",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown"),
      ),
      body: Center(
        child: DropdownButton(
          value: selected,
          hint: Text("Pilih nama.."),
          onChanged: (value) {
            print(value);
            setState(() {
              selected = value;
            });
          },
          items: data
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text("Hallo " + e),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
