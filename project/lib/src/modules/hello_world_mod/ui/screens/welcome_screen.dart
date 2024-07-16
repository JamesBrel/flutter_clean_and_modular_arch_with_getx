import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/fetch_hello_world/controllers/hello_world/hello_world_controller.dart';

class WelcomeScreen extends StatelessWidget {
  final _helloWorldController = Get.find<HelloWorldController>();

  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          _helloWorldController.hello.tr,
          style: const TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
