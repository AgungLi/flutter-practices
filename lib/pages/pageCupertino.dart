import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class PageCupertino extends StatelessWidget {
  static const nameRoute = '\pagecuppertino';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cuppertino"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Platform.isIOS
                        ? CupertinoAlertDialog(
                            title: Text("Delete Item"),
                            content: Text("Are you sure to delete this item?"),
                            actions: [
                              TextButton(
                                onPressed: () {},
                                child: Text("Yes"),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text("No"),
                              ),
                            ],
                          )
                        : AlertDialog(
                            title: Text("Delete Item"),
                            content: Text("Are you sure to delete this item?"),
                            actions: [
                              TextButton(
                                onPressed: () {},
                                child: Text("Yes"),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text("No"),
                              ),
                            ],
                          );
                  },
                );
              },
              child: Text("Alert Dialog"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Platform.isIOS
                    ? showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1999),
                        lastDate: DateTime(2050),
                      )
                    : showCupertinoModalPopup(
                        context: context,
                        builder: (context) {
                          return Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            color: Colors.white,
                            child: CupertinoDatePicker(
                              mode: CupertinoDatePickerMode.time,
                              onDateTimeChanged: (datetime) {
                                print(datetime);
                              },
                              initialDateTime: DateTime.now(),
                            ),
                          );
                        },
                      );
              },
              child: Text("Date Picker"),
            )
          ],
        ),
      ),
    );
  }
}
