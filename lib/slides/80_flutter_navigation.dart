import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FlutterNavigationSlide extends FlutterDeckSlideWidget {
  const FlutterNavigationSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-navigation',
            header: FlutterDeckHeaderConfiguration(
              title: 'Flutter Navigation',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Text('Flutter Navigation'),
    );
  }
}
