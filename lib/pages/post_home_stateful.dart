import 'package:flutter/material.dart';
import 'package:flutter_practices/models/post_http_stateful.dart';

class HomeStateful extends StatefulWidget {
  static const nameRoute = '\homestatefull';

  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  HttpStateful dataResponse = HttpStateful();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("POST - STATEFUL"),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Text(
                (dataResponse.id == null)
                    ? "ID : Belum ada data"
                    : "ID : ${dataResponse.id} ",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(child: Text("Name : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                (dataResponse.name == null)
                    ? "Name : Belum ada data"
                    : "Name : ${dataResponse.name} ",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(child: Text("Job : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                (dataResponse.job == null)
                    ? "JOB : Belum ada data"
                    : "JOB : ${dataResponse.job} ",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(
                child: Text("Created At : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                (dataResponse.createdAt == null)
                    ? "CREATEAT : Belum ada data"
                    : "CREATEAT : ${dataResponse.createdAt} ",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 100),
            OutlinedButton(
              onPressed: () {
                HttpStateful.connectAPI("Agung Laksmana Ismail", "Back ENd")
                    .then(
                  (value) {
                    print(value.name);
                    setState(() {
                      dataResponse = value;
                    });
                  },
                );
              },
              child: Text(
                "POST DATA",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
