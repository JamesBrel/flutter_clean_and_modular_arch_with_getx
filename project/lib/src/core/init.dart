// todo : Remove the comment marks once to activate the lines you need to develop your project.

// import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import 'configs/assets_config/assets.gen.dart';

class Init {
  Init._();
  static Future<void> start() async {
    //! WidgetFlutter and DeviceType Initialization
    // active these lines down
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) async {
      Element? context = WidgetsFlutterBinding.ensureInitialized().rootElement;

      //! Prelod All the svg
      // final svgs = [];
      // for (var svgImage in svgs) {
      //   await svg.cache.putIfAbsent(SvgAssetLoader(svgImage).cacheKey(null),
      //       () => SvgAssetLoader(svgImage).loadBytes(null));
      // }

      //! Prelod All the png
      final pngs = [
        Assets.images.png.flutter.path,
      ];
      for (var pngImage in pngs) {
        await precacheImage(Image.asset(pngImage).image, context!);
      }

      //! Prelod All the gif
      // var gifs = [];
      // for (var gifImage in gifs) {
      //   await precacheImage(Image.asset(gifImage).image, context!);
      // }

      //! Prelod All the jpg
      // final jpgs = [];
      // for (var jpgImage in jpgs) {
      //   await precacheImage(Image.asset(jpgImage).image, context!);
      // }

      //! screen config
      // WindowConfig.windows();
    });

    //! services config init
    // await FirebaseConfig.init(
    //   env: EnvPath.env,
    // );
    // HttpOverrides.global = new HttpOverridesHelper();
  }
}
