import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FlutterAppExampleSlide extends FlutterDeckSlideWidget {
  const FlutterAppExampleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-apps-example',
            header: FlutterDeckHeaderConfiguration(
              title: 'Applicazioni in Flutter',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => FlutterDeckBulletList(
        useSteps: false,
        items: const [
          'BMW Companion App',
          'Google Pay',
          'Google Earth',
          'eBay Motors',
          'Nubank',
          'Google Classroom',
          'Ubuntu: Software Store, Installer, Firmware Upgrader',
          '...'
        ],
      ),
      rightBuilder: (context) => FractionallySizedBox(
        widthFactor: 1,
        child: Image.asset(
          'assets/images/ubuntu-desktop/ubuntu-2310-app-center.jpg',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
