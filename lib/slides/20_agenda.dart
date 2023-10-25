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
          'Cosa è Flutter?',
          'Piattaforme supportate',
          'Challenge e vantaggi',
          'Navigazione, gestione finestra, responsive',
          'UI per Linux, Android, iOS, Windows, macOS e Web',
          'Temi e dark/light mode',
          'Demo'
        ],
      ),
    );
  }
}
