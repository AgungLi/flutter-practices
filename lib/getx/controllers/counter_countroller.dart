import 'package:get/get.dart';

class ControlCounter extends GetxController {
  var counter = 0.obs;
  var isDark = false.obs;

  void increment() => counter++;
  void changeTheme() => isDark.value = !isDark.value;
}
