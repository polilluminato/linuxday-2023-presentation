import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AboutMeSlide extends FlutterDeckSlideWidget {
  const AboutMeSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/about-me',
            header: FlutterDeckHeaderConfiguration(title: 'About me'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Text('About me'),
    );
  }
}
