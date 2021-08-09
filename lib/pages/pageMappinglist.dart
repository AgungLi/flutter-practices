import 'package:flutter/material.dart';

class PageMappinglist extends StatelessWidget {
  static const nameRoute = "\pagemappinglist";
  final List<Map<String, dynamic>> myList = [
    {
      "name": "agung",
      "age": 23,
      "favColor": [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
      ]
    },
    {
      "name": "Laksmana",
      "age": 23,
      "favColor": [
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
      ]
    },
    {
      "name": "Laksmana",
      "age": 23,
      "favColor": [
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
      ]
    },
    {
      "name": "Laksmana",
      "age": 23,
      "favColor": [
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
      ]
    },
    {
      "name": "Laksmana",
      "age": 23,
      "favColor": [
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
      ]
    },
    {
      "name": "Laksmana",
      "age": 23,
      "favColor": [
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
        "Blue",
        "Amber",
        "White",
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Practice Mapping List"),
        ),
        body: ListView(
          children: myList.map((data) {
            List myfavColor = data["favColor"];
            return Card(
              margin: EdgeInsets.all(20),
              color: Colors.blue.withOpacity(0.5),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name: ${data['name']}"),
                            Text("Age: ${data['age']}"),
                          ],
                        )
                      ],
                    ),
                    //favcolor
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: myfavColor.map((color) {
                          return Container(
                            color: Colors.blue,
                            margin: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 8,
                            ),
                            padding: EdgeInsets.all(10),
                            child: Text(color),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
