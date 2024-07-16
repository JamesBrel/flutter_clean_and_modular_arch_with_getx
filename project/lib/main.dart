import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/core/configs/language_config/translation_config.dart';
import 'src/core/init.dart';
import 'src/core/router/app_pages.dart';
import 'src/core/themes/light_theme.dart';
import 'src/shared/constants/string_const.dart';

void main() async {
  await Init.start();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: kDebugMode,
      title: app,
      theme: LightTheme.light,
      getPages: AppPages.pages,
      translations: TranslationConfig(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale("en", "US"),
    );
  }
}
