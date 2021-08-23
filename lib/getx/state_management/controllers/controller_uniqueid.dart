import 'package:get/get.dart';

class ControllerUniqueId extends GetxController {
  var count = 0.obs;
  void add() {
    count++;
    update(['jon', 'ben']);
  }
}
