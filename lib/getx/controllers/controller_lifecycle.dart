import 'package:get/get.dart';

class ControllerLifeCycle extends GetxController {
  var count = 0.obs;

  void add() {
    count++;
  }
}
