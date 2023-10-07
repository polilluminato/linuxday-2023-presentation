import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2023_presentation/styles/dimens.dart';

class FlutterIntroSlide extends FlutterDeckSlideWidget {
  const FlutterIntroSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-intro',
            //header: FlutterDeckHeaderConfiguration(title: 'Cosa è Flutter'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'assets/images/flutter-logo.png',
          ),
          const SizedBox(height: Dimens.mainMargin),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: Dimens.hugeMargin,
              vertical: Dimens.mainMargin,
            ),
            child: Text(
              'Framework open source di Google per la creazione di\n'
              'applicazioni multipiattaforma compilate in modo '
              'nativo\n da un\'unica base di codice',
              style: FlutterDeckTheme.of(context).textTheme.subtitle,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
