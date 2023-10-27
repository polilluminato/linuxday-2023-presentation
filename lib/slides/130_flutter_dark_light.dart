import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2023_presentation/slides/ui/ui_link_row.dart';
import 'package:linuxday_2023_presentation/styles/dimens.dart';

class FlutterDarkLighSlide extends FlutterDeckSlideWidget {
  const FlutterDarkLighSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-dark-light',
            header: FlutterDeckHeaderConfiguration(
              title: 'Temi',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    String repoLink =
        "https://github.com/polilluminato/theme-accent-color-switch-flutter";

    return FlutterDeckSlide.split(
      splitRatio: const SplitSlideRatio(left: 2, right: 3),
      leftBuilder: (context) => FlutterDeckBulletList(
        useSteps: false,
        items: const [
          'Light/Dark mode',
          'Accent e Brand Color',
          'Material You',
        ],
      ),
      rightBuilder: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FractionallySizedBox(
            widthFactor: .9,
            child: Image.asset(
              'assets/videos/accent-color-theme-switch.gif',
              fit: BoxFit.contain,
            ),
          ),
          UiLinkRow(
            label: repoLink,
            padding: const EdgeInsets.only(
              top: Dimens.mainPadding,
              bottom: Dimens.mainPadding,
            ),
            link: repoLink,
            textStyle: FlutterDeckTheme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
