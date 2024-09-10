import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../shared/constants/lang_const.dart';
import '../controllers/hello_world/hello_world_controller.dart';

part '../sketch/welcome_sketch.dart';
part '../widgets/phone/greeting_widget.dart';
part '../widgets/phone/info_widget.dart';

class WelcomeScreen extends GetResponsiveView<HelloWorldController> {
  WelcomeScreen({super.key});

  //*-- PHONE SCREEN --
  @override
  Widget? phone() {
    return _WelcomeSketch(
      greetWidget: _GreetingWidget(
        greeting: controller.hello.tr,
      ),
      infoWidget: _InfoWidget(
        notice: Lang.welcomeInfo.tr,
      ),
    );
  }

  //*-- TABLET SCREEN --
  // @override
  // Widget? tablet() {
  // todo: implement tablet
  //   return super.tablet();
  // }

  //*-- DESKTOP SCREEN --
  // @override
  // Widget? desktop() {
  // todo: implement desktop
  //   return super.desktop();
  // }

  //*-- WATCH SCREEN --
  // @override
  // Widget? watch() {
  // todo: implement watch
  //   return super.watch();
  // }
}
