import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FirstSlide extends FlutterDeckSlideWidget {
  const FirstSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/first-slide',
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(
      title: 'Flutter for the win',
      subtitle: 'Sviluppo Cross-Platform alla massima potenza',
    );
  }
}
