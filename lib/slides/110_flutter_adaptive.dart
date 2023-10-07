import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FlutterAdaptiveSlide extends FlutterDeckSlideWidget {
  const FlutterAdaptiveSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-adaptive',
            header: FlutterDeckHeaderConfiguration(title: 'Flutter Adaptive'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Text('Flutter Adaptive'),
    );
  }
}
