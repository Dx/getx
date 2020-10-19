import 'package:get/state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:getx_demo/pages/home.page.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 2), () {
      Get.off( // Para el splash, ya no va a mostar en el stack este view, aunque hagas back, como navigator.pushReplacement
        HomePage(),
        transition: Transition.zoom
      );
    });
  }

  // @override
  // void onClose() {
  //   print("same as dispose");
  //   super.onClose();
  // }
}
