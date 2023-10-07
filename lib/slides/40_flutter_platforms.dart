import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FlutterPlatformsSlide extends FlutterDeckSlideWidget {
  const FlutterPlatformsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-platforms',
            header: FlutterDeckHeaderConfiguration(title: 'Flutter Platforms'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Text('Flutter Platforms'),
    );
  }
}
