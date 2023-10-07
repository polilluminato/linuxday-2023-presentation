import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FlutterIntroSlide extends FlutterDeckSlideWidget {
  const FlutterIntroSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-intro',
            header: FlutterDeckHeaderConfiguration(title: 'Flutter Intro'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Text('Flutter Intro'),
    );
  }
}
