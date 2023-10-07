import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2023_presentation/utils/utils.dart';

class ThankYou extends FlutterDeckSlideWidget {
  const ThankYou()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/thank-you',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) {
        return Padding(
          padding: EdgeInsets.only(left: getScreenWidth(context) * .05),
          child: Text(
            'Happy Flutter!!!',
            style: FlutterDeckTheme.of(context)
                .textTheme
                .header
                .copyWith(fontSize: 100),
          ),
        );
      },
      rightBuilder: (context) => FractionallySizedBox(
        widthFactor: 0.5,
        child: Image.asset(
          'assets/gifs/thank-you.gif',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
