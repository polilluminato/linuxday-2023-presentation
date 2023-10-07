import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FlutterAppExampleSlide extends FlutterDeckSlideWidget {
  const FlutterAppExampleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-apps-example',
            header:
                FlutterDeckHeaderConfiguration(title: 'Flutter Apps Example'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Text('Flutter Apps Example'),
    );
  }
}
