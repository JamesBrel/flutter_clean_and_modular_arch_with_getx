part of '../screens/welcome_screen.dart';

class _WelcomeSketch extends StatelessWidget {
  final Widget greetWidget;
  final Widget infoWidget;

  const _WelcomeSketch({
    required this.greetWidget,
    required this.infoWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            greetWidget,
            const SizedBox(height: 10.0),
            infoWidget,
          ],
        ),
      ),
    );
  }
}
