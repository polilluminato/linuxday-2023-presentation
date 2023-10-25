import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FlutterNavigationSlide extends FlutterDeckSlideWidget {
  const FlutterNavigationSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-navigation',
            header: FlutterDeckHeaderConfiguration(
              title: 'Navigazione',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      splitRatio: const SplitSlideRatio(left: 2, right: 3),
      leftBuilder: (context) => FlutterDeckBulletList(
        useSteps: false,
        items: const ['TODO'],
      ),
      rightBuilder: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FractionallySizedBox(
            widthFactor: .9,
            child: Image.asset(
              'assets/videos/change-navigation-responsive.gif',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
