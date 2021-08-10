import 'package:flutter/material.dart';

class PageDatepicker extends StatefulWidget {
  static const nameRoute = '\pageDatePicker';

  @override
  _PageDatepickerState createState() => _PageDatepickerState();
}

class _PageDatepickerState extends State<PageDatepicker> {
  DateTime selectDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectDate.toString(),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // ignore: deprecated_member_use
            OutlineButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2025),
                  initialEntryMode: DatePickerEntryMode.calendar,
                  initialDatePickerMode: DatePickerMode.day,
                  selectableDayPredicate: (day) {
                    if ((day.isAfter(
                            DateTime.now().subtract(Duration(days: 3)))) &&
                        (day.isBefore(DateTime.now().add(Duration(days: 2))))) {
                      return true;
                    }
                    return false;
                  },
                  helpText: "Help Text",
                  cancelText: "Cancel Text",
                  confirmText: "Confirm Text",
                  fieldHintText: "Field Hint Text",
                  fieldLabelText: "fieldLabelText",
                  builder: (context, child) {
                    return Theme(
                      data: ThemeData.light(),
                      child: child,
                    );
                  },
                ).then((value) {
                  if (value != null)
                    setState(() {
                      selectDate = value;
                    });
                });
              },
              child: Text("Date Picker"),
            ),
          ],
        ),
      ),
    );
  }
}
