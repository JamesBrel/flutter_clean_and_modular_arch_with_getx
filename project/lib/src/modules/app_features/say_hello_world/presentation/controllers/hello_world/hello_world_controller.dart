import 'package:get/get.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../domain/usecases/system_say_hello_world_usecase.dart';

class HelloWorldController extends GetxController {
  final SystemSayHelloWorldUsecase systemSayHelloWorldUsecase;

  HelloWorldController({
    required this.systemSayHelloWorldUsecase,
  });

  var hello = "";

  @override
  void onInit() {
    _sayHelloWorld();
    super.onInit();
  }

  void _sayHelloWorld() {
    Result<String, void> _result = systemSayHelloWorldUsecase.call();
    _result.whenSuccess((success) => hello = success);
  }
}
