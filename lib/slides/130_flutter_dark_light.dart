import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FlutterDarkLighSlide extends FlutterDeckSlideWidget {
  const FlutterDarkLighSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-dark-light',
            header: FlutterDeckHeaderConfiguration(title: 'Flutter Dark Light'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Text('Flutter Dark Light'),
    );
  }
}
