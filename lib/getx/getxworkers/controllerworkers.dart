import 'package:get/state_manager.dart';

class ControllerWorkers extends GetxController {
  var count = 0.obs;
  var data = 0.obs;
  void change() => count++;
  void reset() => count.value = 0;

  @override
  void onInit() {
    print("oninit");
    // ever(
    //   count,
    //   (_) => print("ada perubahan"),
    // );
    // everAll(
    //   [count, data],
    //   (_) => print("ada perubahan"),
    // );
    // once(
    //   count,
    //   (_) => print("ada perubahan"),
    // );
    // debounce(
    //   count,
    //   (_) => print("ada perubahan"),
    //   time: Duration(seconds: 2),
    // );
    interval(
      count,
      (_) => print("ada perubahan"),
      time: Duration(seconds: 2),
    );
    super.onInit();
  }
}
