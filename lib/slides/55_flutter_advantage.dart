import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FlutterAdvantageSlide extends FlutterDeckSlideWidget {
  const FlutterAdvantageSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-advantage',
            header: FlutterDeckHeaderConfiguration(
              title: 'Vantaggi Flutter',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => FlutterDeckBulletList(
        useSteps: false,
        items: const [
          'Unica base di codice (Dart)',
          'Compilazione nativa',
          'UI consistente e feature parity',
          'Maggiore velocità nello sviluppo',
          'Diminuzione tempi di sviluppo',
          'Assistenza e bugfix più rapidi',
        ],
      ),
      rightBuilder: (context) => FractionallySizedBox(
        widthFactor: 0.8,
        child: Image.asset(
          'assets/gifs/advantage.gif',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
