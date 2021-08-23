import 'package:get/get.dart';

class ControllerReactive extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }
}
