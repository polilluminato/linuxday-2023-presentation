import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FlutterWindowManagementSlide extends FlutterDeckSlideWidget {
  const FlutterWindowManagementSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-window-management',
            header: FlutterDeckHeaderConfiguration(
              title: 'Gestione finestra',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      splitRatio: const SplitSlideRatio(left: 2, right: 3),
      leftBuilder: (context) => FlutterDeckBulletList(
        useSteps: false,
        items: const [
          'Hide/Show',
          'Resize',
          'Maximize/Minimize',
          'Fullscreen',
          'Position',
          'Opacity',
          'Brightness',
          'Alignment/Center'
        ],
      ),
      rightBuilder: (context) => FractionallySizedBox(
        widthFactor: 1,
        child: Image.asset(
          'assets/videos/window-manager-demo.gif',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
