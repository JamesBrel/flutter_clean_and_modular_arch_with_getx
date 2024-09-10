import 'package:get/get.dart';

import '../../modules/app_features/say_hello_world/presentation/controllers/hello_world/hello_world_binding.dart';
import '../../modules/app_features/say_hello_world/presentation/screens/welcome_screen.dart';
import '../../modules/app_features/splash_making/presentation/controllers/splash_controller/splash_binding.dart';
import '../../modules/app_features/splash_making/presentation/screens/splash_screen.dart';

part './routes.dart';

abstract class AppPages {
  AppPages._();

  static var pages = [
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.welcomeScreen,
      page: () => WelcomeScreen(),
      binding: HelloWorldBinding(),
    ),
  ];
}
