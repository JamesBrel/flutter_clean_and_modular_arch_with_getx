import 'dart:async';

import 'package:get/get.dart';

import '../../../../../../core/router/app_pages.dart';
import '../../../../../../shared/constants/int_const.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    _splashMaking();
    super.onInit();
  }

  Future<void> _splashMaking() async {
    await Future.delayed(const Duration(seconds: splashDuration));
    Get.offNamed(Routes.welcomeScreen);
  }
}
