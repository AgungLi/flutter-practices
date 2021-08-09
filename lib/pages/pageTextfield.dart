import 'package:flutter/material.dart';

class PageTextField extends StatefulWidget {
  static const nameRoute = '/pagetextfield';

  @override
  _PageTextFieldState createState() => _PageTextFieldState();
}

class _PageTextFieldState extends State<PageTextField> {
  final TextEditingController myController = TextEditingController();

  String hasil = "Hasil Input";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TextField Widget"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  //FITUR
                  // autocorrect: true,
                  // autofocus: true,
                  // enableSuggestions: true,
                  // enableInteractiveSelection: true,
                  // enabled: true,
                  // obscureText: false,
                  // obscuringCharacter: '>',
                  // keyboardType: TextInputType.phone,
                  // readOnly: false,

                  //DECORATION
                  showCursor: true,
                  cursorColor: Colors.red,
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  textCapitalization: TextCapitalization.words,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      size: 35,
                    ),
                    // prefixText: "Name: ",
                    // prefixIcon: Icon(Icons.person),
                    hintText: "Please input your name..",
                    hintStyle: TextStyle(color: Colors.red),
                    labelText: "Full Name",
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                  controller: myController,
                  onChanged: (value) {
                    print("onchanged");
                  },
                  onSubmitted: (value) {
                    print(value);
                    setState(() {
                      hasil = value;
                    });
                  },
                  onEditingComplete: () {
                    print("Edit Success");
                    print(myController.text);
                  },
                ),
                Text(hasil)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
