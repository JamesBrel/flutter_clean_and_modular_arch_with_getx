import 'package:get/get.dart';

import '../../../data/local_source/absts/say_the_hello_world_abst.dart';
import '../../../data/local_source/impls/say_the_hello_world_impl.dart';
import '../../../data/reposit_impls/the_system_say_hello_world_reposit_impl.dart';
import '../../../domain/reposit_absts/the_system_say_hello_world_reposit_abst.dart';
import '../../../domain/usecases/system_say_hello_world_usecase.dart';
import 'hello_world_controller.dart';

class HelloWorldBinding implements Bindings {
  @override
  void dependencies() {
    //! ---Data---
    Get.lazyPut<SayTheHelloWorldAbst>(
      () => SayTheHelloWorldImpl(),
    );

    //! ---Repositories---
    Get.lazyPut<TheSystemSayHelloWorldRepositAbst>(
      () => TheSystemSayHelloWorldRepositImpl(
          sayTheHelloWorldAbst: Get.find<SayTheHelloWorldAbst>()),
    );

    //! ---Usecases---
    Get.lazyPut<SystemSayHelloWorldUsecase>(
      () => SystemSayHelloWorldUsecase(
          theSystemSayHelloWorldRepositAbst:
              Get.find<TheSystemSayHelloWorldRepositAbst>()),
    );

    //! ---Controllers---
    Get.lazyPut<HelloWorldController>(() => HelloWorldController(
        systemSayHelloWorldUsecase: Get.find<SystemSayHelloWorldUsecase>()));
  }
}
