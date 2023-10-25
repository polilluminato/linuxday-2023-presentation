import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FlutterAppExampleSlide extends FlutterDeckSlideWidget {
  const FlutterAppExampleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-apps-example',
            header: FlutterDeckHeaderConfiguration(
              title: 'Flutter Apps',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      splitRatio: const SplitSlideRatio(left: 2, right: 3),
      leftBuilder: (context) => FlutterDeckBulletList(
        useSteps: false,
        items: const [
          'Ubuntu Software Store',
          'Ubuntu Installer',
          'Ubuntu Firmware Upgrader',
          'BMW Companion App',
          'Google Pay',
          'Google Earth',
          'eBay Motors',
          'Nubank',
          'Google Classroom',
          '...'
        ],
      ),
      rightBuilder: (context) => FractionallySizedBox(
        widthFactor: .9,
        child: Image.asset(
          'assets/images/ubuntu-desktop/ubuntu-app-center.jpg',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
