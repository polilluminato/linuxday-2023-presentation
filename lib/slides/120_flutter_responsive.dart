import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FlutterResponsiveSlide extends FlutterDeckSlideWidget {
  const FlutterResponsiveSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-responsive',
            header: FlutterDeckHeaderConfiguration(title: 'Flutter Responsive'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Text('Flutter Responsive'),
    );
  }
}
