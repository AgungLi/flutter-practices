import 'package:flutter/material.dart';

class PageDialog extends StatelessWidget {
  static const nameRoute = '\pagedialog';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyDialog(),
    );
  }
}

class MyDialog extends StatefulWidget {
  @override
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  String data = "Belum ada input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Center(
        child: Text(
          data,
          style: TextStyle(
            fontSize: 35,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Confirm"),
                content: Text("Are you sure to delete this item ?"),
                actions: [
                  // ignore: deprecated_member_use
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        data = "False";
                      });
                      Navigator.of(context).pop(false);
                    },
                    child: Text("No"),
                  ),
                  // ignore: deprecated_member_use
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        data = "True";
                      });
                      Navigator.of(context).pop(true);
                    },
                    child: Text("Yes"),
                  ),
                ],
              );
            },
          ).then((value) => print(value));
        },
        child: Icon(Icons.delete),
      ),
    );
  }
}
