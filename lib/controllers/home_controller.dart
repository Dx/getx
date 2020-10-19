import 'package:get/state_manager.dart';

// the home controller
class HomeController extends GetxController {
  int _counter = 0;

  int get counter => _counter;

  @override
  void onInit() {
    // on this method, the view is not ready, just the context
    super.onInit();
    print("same as initState");
  }

  @override
  void onReady() {
    // on this method, the view is ready and accessible
    super.onReady();
    print("on Ready");
  }

  void increment() {
    this._counter++;
    update(['text']);
  }
}
