import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2023_presentation/slides/ui/qrcode_link.dart';

class LinksSlide extends FlutterDeckSlideWidget {
  const LinksSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/links',
            header: FlutterDeckHeaderConfiguration(title: 'Links'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) {
        return const QrCodeLink(
          link: "https://bit.ly/ldmi2023-flutter-slides",
          title: "Presentazione",
        );
      },
      rightBuilder: (context) {
        return const QrCodeLink(
          link: "https://bit.ly/ldmi2023-flutter-demo",
          title: "App Demo",
        );
      },
    );
  }
}
