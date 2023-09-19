import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class LastSlide extends FlutterDeckSlideWidget {
  const LastSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/last-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'Blank slide template',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Text('Finish!'),
    );
  }
}
