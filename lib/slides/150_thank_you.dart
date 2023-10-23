import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2023_presentation/slides/ui/qrcode_link.dart';

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
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Happy Flutter!!!',
              style: FlutterDeckTheme.of(context)
                  .textTheme
                  .header
                  .copyWith(fontSize: 64),
            ),
            const QrCodeLink(
              link: "https://bit.ly/ldmi2023-flutter-slides",
            )
          ],
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
