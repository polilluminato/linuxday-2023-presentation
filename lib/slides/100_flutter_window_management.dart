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
        widthFactor: 0.8,
        child: Image.asset(
          'assets/gifs/to-do.gif',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
