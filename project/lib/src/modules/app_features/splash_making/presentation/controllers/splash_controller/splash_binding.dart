import 'package:get/get.dart';

import 'splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    //! ---Controllers---
    Get.lazyPut<SplashController>(() => SplashController());
  }
}
