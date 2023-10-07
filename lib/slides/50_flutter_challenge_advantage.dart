import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FlutterChallengeAdvantageSlide extends FlutterDeckSlideWidget {
  const FlutterChallengeAdvantageSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-challenge-advantage',
            header: FlutterDeckHeaderConfiguration(
                title: 'Flutter Challenge Advantage'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Text('Flutter Challenge Advantage'),
    );
  }
}
