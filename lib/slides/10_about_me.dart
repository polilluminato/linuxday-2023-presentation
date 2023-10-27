import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AboutMeSlide extends FlutterDeckSlideWidget {
  const AboutMeSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/about-me',
            header: FlutterDeckHeaderConfiguration(
              title: 'Presentazioni',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => FlutterDeckBulletList(
        useSteps: false,
        items: const [
          'Software Engineer @ Soluzione1',
          'Flutter enthusiast',
          'Free Software activist',
          'Linux User',
        ],
      ),
      rightBuilder: (context) => FractionallySizedBox(
        widthFactor: 0.9,
        child: Image.asset(
          'assets/me/me.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
