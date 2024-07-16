import 'package:get/get.dart';

import '../../modules/hello_world_mod/features/fetch_hello_world/controllers/hello_world/hello_world_binding.dart';
import '../../modules/hello_world_mod/ui/screens/welcome_screen.dart';

part './routes.dart';

abstract class AppPages {
  static var pages = [
    GetPage(
      name: Routes.WELCOME,
      page: () => WelcomeScreen(),
      binding: HelloWorldBinding(),
    )
  ];
}
