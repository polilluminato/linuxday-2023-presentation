import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FlutterStatsSlide extends FlutterDeckSlideWidget {
  const FlutterStatsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-stats',
            header: FlutterDeckHeaderConfiguration(title: 'Flutter Stats'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Text('Flutter Stats'),
    );
  }
}
