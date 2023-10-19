import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FlutterChallengeSlide extends FlutterDeckSlideWidget {
  const FlutterChallengeSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-challenge',
            header: FlutterDeckHeaderConfiguration(
              title: 'Sfide Multipiattaforma',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => FlutterDeckBulletList(
        useSteps: false,
        items: const [
          'Molteplici team/sviluppatori',
          'N linguaggi di programmazione',
          'Allineamento funzionalità',
          'Molteplici stili nella UI',
          'Aumento costi e tempi di sviluppo',
          'Manutenzione per piattaforma',
        ],
      ),
      rightBuilder: (context) => FractionallySizedBox(
        widthFactor: 0.9,
        child: Image.asset(
          'assets/gifs/challenge.gif',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
