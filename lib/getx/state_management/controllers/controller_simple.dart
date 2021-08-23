import 'package:get/get.dart';

class ControllerSimple extends GetxController {
  var count = 0;

  void increment() {
    count++;
    update();
  }
}
