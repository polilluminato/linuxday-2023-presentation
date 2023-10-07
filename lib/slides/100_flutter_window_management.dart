import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FlutterWindowManagementSlide extends FlutterDeckSlideWidget {
  const FlutterWindowManagementSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-window-management',
            header: FlutterDeckHeaderConfiguration(
                title: 'Flutter Window Management'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Text('Flutter Window Management'),
    );
  }
}
