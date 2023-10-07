import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AboutMeSlide extends FlutterDeckSlideWidget {
  const AboutMeSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/about-me',
            header: FlutterDeckHeaderConfiguration(title: 'Chi sono'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => FlutterDeckBulletList(
        useSteps: false,
        items: const [
          'Software Engineer @ Soluzione1 🧑‍💻',
          'Flutter enthusiast 🩵',
          'Free Software activist 🧾',
          'Linux User 🐧',
        ],
      ),
    );
  }
}
