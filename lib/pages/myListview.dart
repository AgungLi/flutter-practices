import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyListview extends StatelessWidget {
  static const nameRoute = '\mylistview';

  List<Widget> myList = [
    Container(
      height: 100,
      width: 100,
      color: Colors.red,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.blue,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.black,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.grey,
    ),
  ];

  List<Color> myColor = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.amber,
    Colors.black,
    Colors.purple
  ];

  List<ListTile> myListTile = [
    ListTile(
      title: Text("title"),
      subtitle: Text("subtitle"),
      leading: CircleAvatar(),
      trailing: Text("10:00 pm"),
      tileColor: Colors.blue,
      dense: true,
      contentPadding: EdgeInsets.all(10),
      onTap: () {},
    ),
    ListTile(
      title: Text("title"),
      subtitle: Text("subtitle"),
      leading: CircleAvatar(),
      trailing: Text("10:00 pm"),
    ),
    ListTile(
      title: Text("title"),
      subtitle: Text("subtitle"),
      leading: CircleAvatar(),
      trailing: Text("10:00 pm"),
    ),
    ListTile(
      title: Text("title"),
      subtitle: Text("subtitle"),
      leading: CircleAvatar(),
      trailing: Text("10:00 pm"),
    ),
    ListTile(
      title: Text("title"),
      subtitle: Text("subtitle"),
      leading: CircleAvatar(),
      trailing: Text("10:00 pm"),
    ),
    ListTile(
      title: Text("title"),
      subtitle: Text("subtitle"),
      leading: CircleAvatar(),
      trailing: Text("10:00 pm"),
    ),
    ListTile(
      title: Text("title"),
      subtitle: Text("subtitle"),
      leading: CircleAvatar(),
      trailing: Text("10:00 pm"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Practices Listview Widget and ListTile"),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 20,
              child: Center(
                child: Text("ListView"),
              ),
            ),
            Container(
              height: 300,
              child: ListView(
                children: myList,
              ),
            ),
            SizedBox(
              height: 20,
              child: Center(
                child: Text("ListView Builder"),
              ),
            ),
            Container(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: myColor.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    width: 100,
                    color: myColor[index],
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
              child: Center(
                child: Text("ListView Separated"),
              ),
            ),
            Container(
              height: 300,
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 10,
                  );
                },
                itemCount: myColor.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    width: 100,
                    color: myColor[index],
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
              child: Center(
                child: Text("ListTile"),
              ),
            ),
            Container(
              height: 300,
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.black,
                    height: 10,
                  );
                },
                itemCount: myListTile.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: myListTile[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
