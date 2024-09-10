import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/configs/assets_config/assets.gen.dart';
import '../../../../../core/configs/assets_config/colors.gen.dart';
import '../controllers/splash_controller/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: controller,
      builder: (_) => Scaffold(
        backgroundColor: ColorsApp.whiteColor,
        body: Center(
          child: Image.asset(
            Assets.images.png.flutter.path,
            width: 200.0,
            height: 200.0,
          ),
        ),
      ),
    );
  }
}
