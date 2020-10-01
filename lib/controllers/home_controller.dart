import 'package:get/state_manager.dart';

// the home controller
class HomeController extends GetxController {
  int _counter = 0;

  int get counter => _counter;

  @override
  void onInit() {
    super.onInit();
    print("same as initState");
  }

  void increment() {
    this._counter++;
    update();
  }
}
