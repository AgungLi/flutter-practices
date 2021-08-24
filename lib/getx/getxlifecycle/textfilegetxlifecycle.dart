import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainTextFielGetx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomeTextField(),
    );
  }
}

class HomeTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Text Field"),
        actions: [
          IconButton(
            onPressed: () => Get.to(
              () => PageTextField(),
            ),
            icon: Icon(Icons.text_snippet),
          )
        ],
      ),
      body: Center(
        child: Text("HOME TEXT FIELD"),
      ),
    );
  }
}

class PageTextField extends StatelessWidget {
  final textC = Get.put(TextController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Text Field"),
      ),
      body: TextField(
        controller: textC.myC,
      ),
    );
  }
}

class TextController extends GetxController {
  final myC = TextEditingController();
}
