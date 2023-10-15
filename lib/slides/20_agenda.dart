import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AgendaSlide extends FlutterDeckSlideWidget {
  const AgendaSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/agenda',
            header: FlutterDeckHeaderConfiguration(
              title: 'Agenda',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => FlutterDeckBulletList(
        useSteps: false,
        items: const [
          'Introduzione a Flutter',
          'Piattaforme supportate',
          'Challenge e vantaggi',
          'Navigazione e dimensione schermo',
          'UI per Windows, macOS e Linux',
          'Adaptive e Responsive',
          'Demo'
        ],
      ),
    );
  }
}
