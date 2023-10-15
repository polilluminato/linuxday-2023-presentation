import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FlutterUIPackagesSlide extends FlutterDeckSlideWidget {
  const FlutterUIPackagesSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-ui-packages',
            header: FlutterDeckHeaderConfiguration(
              title: 'Flutter UI Packages',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Text('Flutter UI Packages'),
    );
  }
}
